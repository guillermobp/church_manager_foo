class BaptismsController < ApplicationController

  def index
    @baptisms = current_church.baptisms
  end

  def new
    @baptism = Baptism.new(date: Date::today)
  end

  def create
    @baptism = Baptism.new(baptism_params)
    if (@baptism.save)
      respond_to do |format|
        format.js
      end
    else
    end
  end

  def show
    @baptism = Baptism.find(params[:id])
  end

  private

    def baptism_params
      params.require(:baptism).permit(:priest_id, :date, :baptised_id, :mother_id, :father_id, :godmother_id, :godfather_id)
    end

end
