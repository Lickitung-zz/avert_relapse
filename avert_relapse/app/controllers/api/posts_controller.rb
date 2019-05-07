class Api::PostsController < ApplicationController
  before_action :authenticate_user, except: [:show]

  def index
    @posts = current_user.account.posts
    # render "index.json.jbuilder"
    if @posts == []
      render json: {message: "you aint got no posts"}
    else
      render "index.json.jbuilder"
    end
  end

  def like
    @post = Post.find_by(id: params[:id])
    @post.likes = 1
    render json: {likes: @post.likes}
  end

  def show
    @posts = Account.find_by(id: params[:id]).posts
    
    render "show_account_posts.json.jbuilder"
  end

  def show_post
    @post = Post.find_by(id: params[:id])

    render "show.json.jbuilder"
  end

  def create
    @post = Post.create(
      text: params[:text],
      published_date: Time.now,
      published_by: current_user.account.first_name + ' ' + current_user.account.last_name,
      account_id: current_user.account.id,
      likes: 0,
      dislikes: 0
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
