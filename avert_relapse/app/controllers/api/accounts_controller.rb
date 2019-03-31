class Api::AccountsController < ApplicationController
  before_action :authenticate_user, except: [:index, :delete]

  def index
    @accounts = Account.all
    render "index.json.jbuilder"
  end

  def create
    if current_user
      @account = Account.create(
      name: params[:name],
      phone_number: params[:phone_number],
      user_id: params[:user_id]
    )
    render "show.json.jbuilder"
    else
      render json: {message: "Login to create account."}
    end
  end

  def delete
    @account = Account.find_by(id: params[:id])
    @account.destroy
    render json: {message: "Account deleted"}
  end
end
