class Api::ContactsController < ApplicationController
  def the_contact
    render 'contact.json.jb'
  end
end
