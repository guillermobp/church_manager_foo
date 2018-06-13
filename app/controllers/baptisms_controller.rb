class BaptismsController < ApplicationController

  def new
    @baptised = Baptised.new
    @mother = Mother.new
    @father = Father.new
    @godmother = Godmother.new
    @godfather = Godfather.new
    @baptism = Baptism.new(date: Date::today)
  end

  def create
    byebug
    # baptised = Baptised.find_or_create_by(national_identification_number: baptised_params[:national_identification_number])
    # baptised.update(baptised_params)
    #
    # mother = Mother.find_or_create_by(national_identification_number: baptised_params[:national_identification_number])
    # mother.update(mother_params)
    #
    # father = Father.find_or_create_by(national_identification_number: father_params[:national_identification_number])
    # father.update(father_params)
    #
    # godmother = Godmother.find_or_create_by(national_identification_number: godmother_params[:national_identification_number])
    # godmother.update(godmother_params)
    #
    # godfather = Godfather.find_or_create_by(national_identification_number: godfather_params[:national_identification_number])
    # godfather.update(godfather_params)
    #
    # baptism = Baptism.new(baptism_params.merge(baptised: baptised,
    #                                            mother: mother,
    #                                            father: father,
    #                                            godmother: godmother,
    #                                            godfather: godfather))
    #
    # if (baptism.save)
    #   respond_to do |format|
    #     format.js
    #   end
    # else
    #   respond_to do |format|
    #     format.json { render json: baptism.errors }
    #   end
    # end
  end

  # def person_form
  #   # byebug
  #   number = person_form_params[:national_identification_number]
  #   type = person_form_params[:type]
  #   @person = Person.find_by national_identification_number: number
  #
  #   if @person.nil?
  #     @person = Person.new(type: type, national_identification_number: number)
  #   else
  #     @person.type = type
  #   end
  #
  #   respond_to do |format|
  #     format.html { render partial: 'person_form', locals: { person: @person } }
  #     format.js
  #     format.json { render json: @person }
  #   end
  # end

  # def nin_form
  #   # byebug
  #   # render partial: 'nin_input', locals: { person: Baptised.new }
  #   @person = Baptised.new
  #   respond_to do |format|
  #     # format.html { render partial: 'person_form', locals: { person: @person } }
  #     format.js
  #     # format.json { render json: @person }
  #   end
  # end

  private

    # def person_form_params
    #   params.require(:person).permit(:type, :national_identification_number)
    # end
    #
    # def baptism_params
    #   params.require(:baptism).permit(:priest_id, :date)
    # end
    #
    # def baptised_params
    #   params.require(:baptism).require(:baptised).permit(:national_identification_number, :first_name, :last_name, :display_name, :avatar_url, :birth_date, :birth_commune_id)
    # end
    #
    # def mother_params
    #   params.require(:baptism).require(:mother).permit(:national_identification_number, :first_name, :last_name, :display_name, :avatar_url, :birth_date, :birth_commune_id)
    # end
    #
    # def father_params
    #   params.require(:baptism).require(:father).permit(:national_identification_number, :first_name, :last_name, :display_name, :avatar_url, :birth_date, :birth_commune_id)
    # end
    #
    # def godmother_params
    #   params.require(:baptism).require(:godmother).permit(:national_identification_number, :first_name, :last_name, :display_name, :avatar_url, :birth_date, :birth_commune_id)
    # end
    #
    # def godfather_params
    #   params.require(:baptism).require(:godfather).permit(:national_identification_number, :first_name, :last_name, :display_name, :avatar_url, :birth_date, :birth_commune_id)
    # end

end
