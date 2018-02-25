class PriestsController < ApplicationController

  def show
    @priest = Priest.find(params[:id])
    render @priest
  end

end
