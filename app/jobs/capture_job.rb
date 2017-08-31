class CaptureJob < ApplicationJob
  queue_as :default

  def perform
    puts 'Capturing...'
    begin
      Commodity.capture_all!
      puts 'Captured.'
    rescue => e
      puts "Capture error: #{e.message}"
      CaptureError.create!(message: e.message)
    end
  end
end
