class ContactsController < ApplicationController
  def first_contact_method
    contact = Contact.first
    render json: {
                  first_name: contact.first_name,
                  last_name: contact.last_name,
                  email: contact.email,
                  phone_number: contact.phone_number,
                  birthday: contact.birthday
                  }
      
  end

  def all_contacts_method
    contacts = Contact.all
    contacts_collection = []
    contacts.each do |contact|
      contacts_collection << {
                              first_name: contact.first_name,
                              last_name: contact.last_name,
                              email: contact.email,
                              phone_number: contact.phone_number,
                              birthday: contact.birthday
                              }
    end
    render json: contacts_collection
    
  end

end
