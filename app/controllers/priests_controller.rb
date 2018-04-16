class PriestsController < ApplicationController

  def create
    @priest = current_church.priests.create(priest_params)
    respond_to do |format|
        format.js
    end
  end

  def show
    @priest = Priest.find(params[:id])
    render @priest
  end

  def update
    @priest = Priest.find(params[:id])
    @priest.update(priest_params)
    respond_to do |format|
        format.js
    end
  end

  def toggle_active
    priest = Priest.find(params[:id])
    priest.toggle!(:active)
    respond_to do |format|
        format.js
    end
  end

  private

    def priest_params
      params.require(:priest).permit(:first_name, :last_name, :display_name)
    end

end
