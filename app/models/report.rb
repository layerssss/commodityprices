class Report < ApplicationRecord
  def self.append_line!(text)
    last_report = Report.order(created_at: :desc).first_or_create!
    if last_report.created_at + 1.hour < Time.now
      last_report.update_attributes!(finished: true)
      last_report = Report.create!
    end

    last_report.update_attributes!(content: last_report.content.to_s + "#{Time.now.getlocal.to_s(:long)}: #{text}\n")
  end
end
