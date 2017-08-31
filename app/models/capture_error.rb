# == Schema Information
#
# Table name: capture_errors
#
#  id         :integer          not null, primary key
#  message    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CaptureError < ApplicationRecord
end
