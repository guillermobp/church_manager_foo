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
    binding.pry
  end

  private

    def church_params
      params.require(:church).permit(:name)
    end
end
