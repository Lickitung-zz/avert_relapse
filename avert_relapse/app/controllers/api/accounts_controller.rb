class Api::AccountsController < ApplicationController
  def index
    @accounts = Account.all
    render "index.json.jbuilder"
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
