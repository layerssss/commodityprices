class CommoditiesController < ApplicationController
  before_action :set_commodity, only: %i[show edit update destroy]

  def index
    @commodities = Commodity.all
  end

  def new
    @commodity = Commodity.new
  end

  def create
    @commodity = Commodity.new(commodity_params)

    if @commodity.save
      redirect_to commodities_url, notice: 'Commodity was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @commodity.destroy!
    redirect_to commodities_url, notice: 'Commodity was successfully destroyed.'
  end

  private

  def set_commodity
    @commodity = Commodity.find(params[:id])
  end

  def commodity_params
    params.require(:commodity).permit(:yahoo_symbol)
  end
end
