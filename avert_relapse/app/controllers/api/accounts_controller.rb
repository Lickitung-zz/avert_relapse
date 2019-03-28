class Api::AccountsController < ApplicationController
  before_action :authenticate_user

  def index
    @accounts = Account.all

    if current_user
      @accounts = current_user.accounts
      render "index.json.jbuilder"
    else
      render json: []
    end
  end

  def create
    @account = Account.create(
      name: params[:name],
      phone_number: params[:phone_number],
      user_id: params[:user_id]
    )
    render "show.json.jbuilder"
  end

  def delete
    @account = Account.find_by(id: params[:id])
    @account.destroy
    render json: {message: "Account deleted"}
  end
end
