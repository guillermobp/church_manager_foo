class ChurchesController < ApplicationController
  def index
    @church = Church.first
  end

  def new
    @church = Church.new
  end

  def create
    binding.pry
    #@church = Church.new(church_params)
  end

  def update
    @church = Church.find(params[:id])
    @address = @church.address

    if @church.update(church_params) and @address.update(address_params)
      respond_to do |format|
        format.json { render json: @church }
      end
    end

  end

  private

    def church_params
      params.require(:church).permit(:name, :manager)
    end

    def address_params
      params.require(:church).permit(:street_name, :street_number, :commune_id)
    end
end
