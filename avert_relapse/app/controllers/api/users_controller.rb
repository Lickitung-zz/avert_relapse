class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render "index.json.jbuilder"
  end

  def create
    @user = User.create(
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    @account = Account.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone_number: params[:phone_number],
      messages: params[:messages],
      user_id: @user.id,
      profile_pic: "https://s3-eu-west-1.amazonaws.com/yhahsn.org.uk/wp-content/uploads/2015/08/placeholder-profile-male.jpg",
      cover_photo: "http://electricair.com/wp-content/plugins/uix-page-builder/includes/uixpbform/images/default-cover-6.jpg"
    )
    if @user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: @user.errors.full_messages}, status: :bad_request
    end
  end 

  def show_current_user_id
    render json: {user_id: current_user.id}
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.email = params[:email]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    @user.save
    render json: {message: "updated"}
  end

  def delete
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: {message: "User successfully deleted."}
  end
end
