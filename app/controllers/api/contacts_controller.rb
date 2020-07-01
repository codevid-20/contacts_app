class Api::ContactsController < ApplicationController
  def the_contact
    @contact = Contact.second
    render 'contact.json.jb'
  end

  def every_contact
    @contacts = Contact.all    
    render 'the_contacts.json.jb'
  end
end
