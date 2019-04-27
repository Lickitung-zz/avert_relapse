class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render "index.json.jbuilder"
  end

  def create
    user = User.new(
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
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

  def show_current_user_id
    if current_user
      @user_id = current_user.id
      render json: {user_id: @user_id}
    else
      render json: {message: "not logged in"}
    end
  end
end
