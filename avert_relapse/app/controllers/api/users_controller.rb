class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jbuilder"
  end

  def create
    @user = User.create(
      email: params[:email],
      password: params[:password]
    )
    render json: {message: "User created successfully."}
  end
end
