class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.json.jbuilder"
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
