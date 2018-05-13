class ImagesController < ApplicationController

  before_action :move_to_index, except: :index

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

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
