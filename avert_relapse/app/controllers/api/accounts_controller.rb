class Api::AccountsController < ApplicationController
  before_action :authenticate_user, except: [:index, :delete, :create]

  def index
    @accounts = Account.all
    render "index.json.jbuilder"
  end

  def show_current_account
    @account = Account.all
    render json: {name: current_user.account.name}
  end

  def create
    # if current_user
      @account = Account.create(
      name: params[:name],
      phone_number: params[:phone_number],
      messages: params[:messages],
      user_id: current_user.id
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
