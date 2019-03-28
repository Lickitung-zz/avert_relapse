class Api::MessagesController < ApplicationController
  def index
    @messages = Message.all
    render "index.json.jbuilder"
  end

  def create
    @message = Message.create(
      text: params[:text],
      account_id: params[:account_id],
      contact_id: params[:contact_id]
    )
    render "show.json.jbuilder"
  end
end
