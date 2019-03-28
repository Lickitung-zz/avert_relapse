Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/users" => "users#index"

    get "/accounts" => "accounts#index"

    get "/contacts" => "contacts#index"

    get "/messages" => "messages#index"
  end
end
