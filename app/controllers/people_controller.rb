class PeopleController < ApplicationController

  def create
    byebug
  end

  def update
    byebug
  end

  def nin_form
    @person = Person.new(type: person_params[:type])
    respond_to do |format|
      format.js
    end
  end

  def person_form_by_nin
    number = person_params[:national_identification_number]
    type = person_params[:type]
    @person = Person.find_by national_identification_number: number

    if @person.nil?
      @person = Person.new(type: type, national_identification_number: number)
    else
      @person.type = type
    end

    respond_to do |format|
      format.js
    end
  end

  private

    def person_params
      params.require(:person).permit(:type, :national_identification_number)
    end

end
