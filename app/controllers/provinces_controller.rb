class ProvincesController < ApplicationController

  def index
    render Province.where(region_id: params[:region_id])
  end

  def show
  end

end
