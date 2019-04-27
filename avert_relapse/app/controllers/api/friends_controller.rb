class Api::FriendsController < ApplicationController
  before_action :authenticate_user
  
  def index
    @friends = Contact.all
    
    if current_user
      @friends = current_user.account.friends
      render "index.json.jbuilder"
    else
      render json: []
    end
  end

  def update
    @friend = Friend.find_by(id: params[:id])
    @friend.first_name = params[:first_name] || @friend.first_name
    @friend.last_name = params[:last_name] || @friend.last_name
    @friend.email = params[:email] || @friend.email
    @friend.save
    render "show.json.jbuilder"
  end

  def show
    @friend = friend.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @friend = friend.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      account_id: current_user.account.id
    )
    render "show.json.jbuilder"
  end

  def delete
    @friend = friend.find_by(id: params[:id])
    @friend.destroy
    render json: {message: "Contact successfully deleted."}
  end
end
