class SiteConfiguration < ApplicationRecord
  def self.get
    first_or_create!
  end
end
