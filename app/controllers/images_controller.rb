class ImagesController < ApplicationController

  def index
    @images = Image.order("created_at DESC")
  end

  def new
  end

  def create
    Image.create(image: params[:image], text: params[:text])
  end

  private
  def image_params
    params.permit(:image, :text)
  end

end
