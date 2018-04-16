class ChurchesController < ApplicationController

  def show
    @church = current_church
    @priest = Priest.new
    @priests = @church.priests
  end

  def update
    church = current_church
    church.update!(church_params)
    address = church.address
    address.update!(address_params)
    respond_to do |format|
        format.js
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
