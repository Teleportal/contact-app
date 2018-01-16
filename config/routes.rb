Rails.application.routes.draw do
  get "/first_contact" => 'contacts#first_contact_method'
  get "/all_contacts" => 'contacts#all_contacts_method'
end
