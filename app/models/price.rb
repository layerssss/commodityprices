# == Schema Information
#
# Table name: prices
#
#  id           :integer          not null, primary key
#  commodity_id :integer
#  last_price   :string
#  fetch_time   :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Price < ApplicationRecord
  belongs_to :commodity, inverse_of: :prices
  scope :recent, -> { order(fetch_time: :desc).limit(5) }
end
