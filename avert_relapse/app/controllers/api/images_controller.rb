class Api::ImagesController < ApplicationController
  before_action :authenticate_user

  def index
    @images = current_user.account.images
    render "index.json.jbuilder"
  end

  def create
    @image = Image.create(
      image_source: params[:image_source],
      account_id: current_user.account.id
      )
    render "show.json.jbuilder"
  end

  def update
    @image = Image.find_by(id: params[:id])
    @image.image_source = params[:image_source] || @image.image_source
    @image.save
    render "show.json.jbuilder"
  end

  def delete
    @image = Image.find_by(id: params[:id])
    @image.destroy
    render json: {message: "Image successfully deleted."}
  end
end
