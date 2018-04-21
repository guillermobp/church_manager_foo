class BaptismsController < ApplicationController

  def new
    @baptised = Baptised.new
    @mother = Mother.new
    @father = Father.new
    @baptism = Baptism.new(date: Date::today)
  end

  def create
    baptised = Baptised.create(baptised_params)
    mother = Mother.create(mother_params)
    father = Father.create(father_params)
    Baptism.create(baptism_params.merge(baptised: baptised, mother: mother, father: father))
    respond_to do |format|
      format.js
    end
  end

  private

    def baptism_params
      params.require(:baptism).permit(:priest_id, :date)
    end

    def baptised_params
      params.require(:baptism).require(:baptised).permit(:first_name, :last_name)
    end

    def mother_params
      params.require(:baptism).require(:baptised).permit(:first_name, :last_name)
    end

    def father_params
      params.require(:baptism).require(:baptised).permit(:first_name, :last_name)
    end

end
