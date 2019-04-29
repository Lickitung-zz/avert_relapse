Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/users" => "users#index"
    get "/users/id" => "users#show_current_user_id"
    post "/users" => "users#create"
    delete "/users/:id" => "users#delete"
    put "/users/:id" => "users#update"

    get "/accounts" => "accounts#index"
    get "/accounts/show_name" => "accounts#show_current_account_name"
    get "/accounts/show_profile_pic" => "accounts#show_current_account_profile_pic"
    post "/accounts/update_profile_pic" => "accounts#update_account_profile_pic"
    get "/accounts/show_cover_photo" => "accounts#show_current_account_cover_photo"
    post "/accounts" => "accounts#create"
    delete "/accounts/:id" => "accounts#delete"
    get "/accounts/is_logged_in/" => "accounts#is_logged_in"
    patch "/accounts" => "accounts#update"
    get "/accounts-search" => "accounts#search_index"

    get "/contacts" => "contacts#index"
    get "/contacts/:id" => "contacts#show"
    post "/contacts" => "contacts#create"
    delete "/contacts/:id" => "contacts#delete"
    post "/contacts/:id" => "contacts#update"

    get "/friends" => "friends#index"
    get "/friends/:id" => "friends#show"
    post "/friends" => "friends#create"
    delete "/friends/:id" => "friends#delete"
    patch "/friends/:id" => "friends#update"

    get "/messages" => "messages#index"
    post "/messages" => "messages#create"

    post "/sessions" => "sessions#create"

    post "/twilio/sms" => "twilio#sms"
    get "/twilio/sms" => "twilio#text_body"
    post "/twilio/sms_update" => "twilio#update_text_body"
  end
end
