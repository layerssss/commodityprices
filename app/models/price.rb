class Price < ApplicationRecord
  belongs_to :commodity, inverse_of: :prices
end
