class Api::ContactsController < ApplicationController
  before_action :authenticate_user
  
  def index
    @contacts = Contact.all
    
    if current_user
      @contacts = current_user.accounts[0].contacts
      render "index.json.jbuilder"
    else
      render json: []
    end
  end

  def create
    @contact = Contact.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone_number: params[:phone_number],
      account_id: params[:account_id]
    )
    render "show.json.jbuilder"
  end

  def delete
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render json: {message: "Contact successfully deleted."}
  end
end
