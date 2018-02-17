class RegionsController < ApplicationController

  def index
    render Region.all
  end

  def show
  end

end
