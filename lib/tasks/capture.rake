namespace :capture do
  desc 'TODO'
  task scheduler: :environment do
    loop do
      site_configuration = SiteConfiguration.get
      CaptureJob.perform_now if site_configuration.capturing
      sleep site_configuration.capture_interval_seconds
    end
  end
end
