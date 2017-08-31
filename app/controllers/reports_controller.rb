class ReportsController < ApplicationController
  def index
    @reports = Report.where(finished: true).order(created_at: :desc).first(10)
  end
end
