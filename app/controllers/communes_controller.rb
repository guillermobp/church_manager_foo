class CommunesController < ApplicationController

  def index
    render Commune.where(province_id: params[:province_id])
  end

  def show
  end

end
