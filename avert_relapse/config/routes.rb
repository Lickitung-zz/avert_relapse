Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    delete "/users/:id" => "users#delete"
    put "/users/:id" => "users#update"

    get "/accounts" => "accounts#index"
    get "/accounts/show" => "accounts#show_current_account"
    post "/accounts" => "accounts#create"
    delete "/accounts/:id" => "accounts#delete"

    get "/contacts" => "contacts#index"
    get "/contacts/:id" => "contacts#show"
    post "/contacts" => "contacts#create"
    delete "/contacts/:id" => "contacts#delete"
    patch "/contacts/:id" => "contacts#update"

    get "/messages" => "messages#index"
    post "/messages" => "messages#create"

    post "/sessions" => "sessions#create"

    post "/twilio/sms" => "twilio#sms"
    get "/twilio/sms" => "twilio#text_body"
    post "/twilio/sms_update" => "twilio#update_text_body"
  end
end
