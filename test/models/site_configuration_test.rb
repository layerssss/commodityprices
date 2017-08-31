# == Schema Information
#
# Table name: site_configurations
#
#  id                       :integer          not null, primary key
#  capture_interval_seconds :integer          default(600)
#  capturing                :boolean          default(TRUE)
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

require 'test_helper'

class SiteConfigurationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
