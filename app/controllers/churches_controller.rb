class ChurchesController < ApplicationController
  def index
    @church = Church.find_by id: 1

    if (FirstCountryAdministrativeLevelMetadatum.find_by(country_id: @church.address.country.id))
      @first_level_name = FirstCountryAdministrativeLevelMetadatum.find_by(country_id: @church.address.country.id).name
      @first_level_id = @church.address.country_administrative_level.first_level_id
    end

    if (SecondCountryAdministrativeLevelMetadatum.find_by(country_id: @church.address.country.id))
      @second_level_name = SecondCountryAdministrativeLevelMetadatum.find_by(country_id: @church.address.country.id).name
      @second_level_id = @church.address.country_administrative_level.second_level_id
    end

    if (ThirdCountryAdministrativeLevelMetadatum.find_by(country_id: @church.address.country.id))
      @third_level_name = ThirdCountryAdministrativeLevelMetadatum.find_by(country_id: @church.address.country.id).name
      @third_level_id = @church.address.country_administrative_level.third_level_id
    end

    if (FourthCountryAdministrativeLevelMetadatum.find_by(country_id: @church.address.country.id))
      @fourth_level_name = FourthCountryAdministrativeLevelMetadatum.find_by(country_id: @church.address.country.id).name
      @fourth_level_id = @church.address.country_administrative_level.fourth_level_id
    end
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
