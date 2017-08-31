namespace :capture do
  desc 'TODO'
  task scheduler: :environment do
    scheduled_at = Time.now
    loop do
      sleep 1
      site_configuration = SiteConfiguration.get
      next unless site_configuration.capturing
      next unless Time.now > scheduled_at

      # schedule next event
      scheduled_at = Time.now + site_configuration.capture_interval_seconds

      CaptureJob.perform_now
    end
  end
end
