class Api::AccountsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show, :delete, :create, :is_logged_in, :index_search]

  def index
    @accounts = Account.all
    search_term = params[:search]
    if search_term
      @accounts = Account.where("first_name iLIKE ?", "%#{search_term}%")
    else
      @accounts = Account.all
    end
    render "index.json.jbuilder"
  end

  def show
    @account = Account.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def logged_in_profile_pic
    @account = current_user.account
    render json: {profile_pic: current_user.account.profile_pic}
  end

  def index_search
    @accounts = Account.all
    search_term = params[:search]
    if search_term
      @accounts = Account.where("first_name iLIKE ?", "%#{search_term}%")
    else
      @accounts = Account.all
    end
    render "index.json.jbuilder"
  end

  def update
    @account = current_user.account
    @account.phone_number = params[:phone_number],
    @account.first_name = params[:first_name],
    @account.last_name = params[:last_name],
    @account.phone_number = 1234
    @account.save
    render "show.json.jbuilder"
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

  def current_account_name
    # @account = current_user.account
    # render "show_name.json.jbuilder"
    # render json: {
    #   name: (@account.first_name + ' ' + @account.last_name)
    # }
    if current_user
      @account = current_user.account
      render json: {
        name: ( @account.first_name + ' ' + @account.last_name)
      }
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

  def update_account_profile_pic
    if current_user
      @account = current_user.account
      @account.profile_pic = params[:profile_pic]
      @account.save
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
      first_name: params[:first_name],
      last_name: params[:last_name],
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
