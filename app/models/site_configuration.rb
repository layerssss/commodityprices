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

class SiteConfiguration < ApplicationRecord
  def self.get
    first_or_create!
  end
end
