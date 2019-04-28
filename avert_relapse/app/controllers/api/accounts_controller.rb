class Api::AccountsController < ApplicationController
  before_action :authenticate_user, except: [:index, :delete, :create, :is_logged_in]

  def index
    @accounts = Account.all
    render "index.json.jbuilder"
  end

  def is_logged_in
    if current_user
      render json: true
      return true
    else
      render json: false
      return false
    end
  end

  def show_current_account_name
    if current_user
      @account = current_user.account
      render json: {name: @account.name}
    else
      render json: {message: "not logged in"}
    end
  end

  def show_current_account_profile_pic
    if current_user
      @account = current_user.account
      render json: {profile_pic: @account.profile_pic}
    else
      render json: {message: "not logged in"}
    end
  end

  def show_current_account_cover_photo
    if current_user
      @account = current_user.account
      render json: {cover_photo: @account.cover_photo}
    else
      render json: {message: "not logged in"}
    end
  end

  def create
    # if current_user
      @account = Account.create(
      name: params[:name],
      phone_number: params[:phone_number],
      messages: params[:messages],
      user_id: params[:user_id]
    )
    render "show.json.jbuilder"
    # else
    #   render json: {message: "Login to create account."}
    # end
  end

  def delete
    @account = Account.find_by(id: params[:id])
    @account.destroy
    render json: {message: "Account deleted"}
  end
end
