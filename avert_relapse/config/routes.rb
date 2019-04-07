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
    post "/accounts" => "accounts#create"
    delete "/accounts/:id" => "accounts#delete"

    get "/contacts" => "contacts#index"
    post "/contacts" => "contacts#create"
    delete "/contacts/:id" => "contacts#delete"

    get "/messages" => "messages#index"
    post "/messages" => "messages#create"

    post "/sessions" => "sessions#create"

    post "/twilio/sms" => "twilio#sms"
  end
end
