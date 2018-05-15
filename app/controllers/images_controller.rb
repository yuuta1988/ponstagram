class ImagesController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @images = Image.includes(:user).order("created_at DESC")
  end

  def new
  end

  def create
    Image.create(image: image_params[:image], text: image_params[:text], user_id: current_user.id)
  end

  def destroy
    image = Image.find(params[:id])
    image.destroy if image.user_id == current_user.id
  end

  def edit
    @image = Image.find(params[:id])
  end

  def show
    @image = Image.find(params[:id])
    @comments = @image.comments.includes(:user)
  end

  def update
    image = Image.find(params[:id])
    image.update(image_params) if image.user_id == current_user.id
  end

  private
  def image_params
    params.permit(:image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
