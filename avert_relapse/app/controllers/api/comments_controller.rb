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
      @post.create(body: params[:body])

      render json: {comments: @post}
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
