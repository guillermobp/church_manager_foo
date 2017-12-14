class ChurchesController < ApplicationController
  def index
    @church = Church.find_by id: 3
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
