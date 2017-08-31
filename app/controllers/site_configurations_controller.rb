class SiteConfigurationsController < ApplicationController
  before_action :set_site_configuration, only: %i[show edit update destroy]

  def update
    if @site_configuration.update site_configuration_params
      redirect_to edit_site_configuration_path, notice: 'Site Configuration has been changed.'
    else
      render 'edit'
    end
  end

  private

  def set_site_configuration
    @site_configuration = SiteConfiguration.get
  end

  def site_configuration_params
    params.require(:site_configuration).permit(:capturing, :capture_interval_seconds)
  end
end
