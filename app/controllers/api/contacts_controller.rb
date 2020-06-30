class Api::ContactsController < ApplicationController
  def the_contact
    @contact = Contact.second
    render 'contact.json.jb'
  end
end
