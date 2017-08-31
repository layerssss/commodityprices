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

require 'test_helper'

class PriceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
