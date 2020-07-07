class Api::ContactsController < ApplicationController
  def update
    # find the correct contact
    @contact = Contact.find_by(id: params[:id])
    # update that particular contact
    @contact.update(
      first_name: params[:first_name] || @contact.first_name,
      last_name: params[:last_name] || @contact.last_name,
      phone_number: params[:phone_number] || @contact.phone_number,
      email: params[:email] || @contact.email
    )
    render 'show.json.jb'
  end
end
