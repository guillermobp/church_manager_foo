class PeopleController < ApplicationController

  def create
    @person = Person.new(person_params)
    @selector = params[:selector]
    @related_selector = params[:related_selector]
    if @person.save
      respond_to do |format|
        format.js
      end
    else
    end
  end

  def update
    @person = Person.find params[:id]
    @person.update(person_params)
    @selector = params[:selector]
    @related_selector = params[:related_selector]
    if @person.save
      respond_to do |format|
        format.js
      end
    else
    end
  end

  def nin_form
    @selector = params[:selector]
    @related_selector = params[:related_selector]
    respond_to do |format|
      format.js
    end
  end

  def person_form_by_nin
    @person = Person.find_or_initialize_by national_identification_number: person_params[:national_identification_number].to_i
    @selector = params[:selector]
    @related_selector = params[:related_selector]
    respond_to do |format|
      format.js
    end
  end

  private

    def person_params
      params.require(:person).permit(:national_identification_number, :first_name, :last_name, :display_name, :avatar_url, :birth_date, :birth_commune_id)
    end

end
