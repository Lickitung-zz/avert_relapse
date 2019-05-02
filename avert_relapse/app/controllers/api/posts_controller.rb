class Api::PostsController < ApplicationController
  before_action :authenticate_user

  def index
    @posts = current_user.account.posts
    # render "index.json.jbuilder"
    if @posts == []
      render json: {message: "you aint got no posts"}
    else
      render "index.json.jbuilder"
    end
  end

  def create
    @post = Post.create(
      text: params[:text],
      published_date: Time.now,
      published_by: current_user.account.first_name + ' ' + current_user.account.last_name,
      account_id: current_user.account.id
      )
    render "show.json.jbuilder"
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.text = params[:text] || @post.text
    @post.save
    render "show.json.jbuilder"
  end

  def delete
    @post = Post.find_by(id: params[:id])
    @post.destroy
    render json: {message: "Post successfully deleted."}
  end
end
