class ContactsController < ApplicationController

  def show
    @contact = Contact.find(params[:id])
    render @contact
  end

end
