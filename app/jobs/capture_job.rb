class CaptureJob < ApplicationJob
  queue_as :default

  def perform
    puts 'Capturing...'
    Commodity.capture_all!
    puts 'Captured.'
  end
end
