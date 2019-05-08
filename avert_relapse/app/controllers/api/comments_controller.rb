class Api::CommentsController < ApplicationController
	before_action :find_commentable

  def new
    @comment = Comment.new
  end

  def index
    @comments = Post.find_by(id: params[:id]).comments
    render "index.json.jbuilder"
  end

  def create
    @post = Post.find_by(id: params[:id]).comments
    @post.create(body: params[:body], 
      account_id: current_user.account.id, 
      published_by: (current_user.account.first_name + ' ' + current_user.account.last_name),
      profile_pic: current_user.account.profile_pic)

    render "show.json.jbuilder"
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def find_commentable
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = Post.find_by_id(params[:post_id]) if params[:post_id]
  end
end
