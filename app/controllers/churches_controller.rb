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

    if @church.update(church_params)
      flash[:success] = 'Church data has been updated successfully'
    else
      flash[:error] = 'An error occured trying to save the data'
    end

    redirect_to churches_path
  end

  def save
    binding.pry
  end

  private

    def church_params
      params.require(:church).permit(:name)
    end
end
