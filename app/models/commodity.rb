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
end
