class PeopleController < ApplicationController

  def create
    byebug
  end

  def update
    byebug
  end

  def nin_form
    @selector = params[:selector]
    respond_to do |format|
      format.js
    end
  end

  def person_form_by_nin
    @person = Person.find_or_initialize_by national_identification_number: person_params[:national_identification_number].to_i
    @selector = params[:selector]
    respond_to do |format|
      format.js
    end
  end

  private

    def person_params
      params.require(:person).permit(:national_identification_number)
    end

end
