class Price < ApplicationRecord
  belongs_to :commodity, inverse_of: :prices
  scope :recent, -> { order(fetch_time: :desc).limit(5) }
end
