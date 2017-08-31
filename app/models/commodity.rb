class Commodity < ApplicationRecord
  YAHOO_SYMBOLS = [
    'GC=F',
    'ZG=F',
    'SI=F',
    'ZI=F',
    'PL=F',
    'HG=F',
    'PA=F',
    'CL=F'
  ].freeze

  validates_presence_of :yahoo_symbol
  validates_uniqueness_of :yahoo_symbol
  validates_inclusion_of :yahoo_symbol, in: YAHOO_SYMBOLS

  has_many :prices, inverse_of: :commodity, dependent: :destroy

  def self.capture_all!
    all_symbols = Commodity.pluck(:yahoo_symbol)
    return if all_symbols.empty?

    conditions = all_symbols.map { |symbol| "symbol=\"#{symbol}\"" }
    query = "select * from yahoo.finance.quote where #{conditions.join(' or ')}"
    fetch_time = Time.now

    quotes = JSON.parse(
      RestClient.get(
        'https://query.yahooapis.com/v1/public/yql',
        params: {
          q: query,
          format: 'json',
          env: 'store://datatables.org/alltableswithkeys'
        }
      )
    ).fetch('query').fetch('results').fetch('quote')

    new_prices = []

    Commodity.all.each do |commodity|
      quote = quotes.find { |q| q.fetch('symbol') == commodity.yahoo_symbol }
      throw new Error "quote for #{commodity.yahoo_symbol} not found." unless quote

      new_prices.push(
        Price.new(
          commodity: commodity,
          fetch_time: fetch_time,
          last_price: quote.fetch('LastTradePriceOnly')
        )
      )
    end

    Report.append_line!(new_prices.map { |price| "'#{price.commodity.yahoo_symbol}': #{price.last_price}" }.join("; "))

    new_prices.each(&:save!)
  end
end
