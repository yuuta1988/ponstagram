class ImagesController < ApplicationController

  before_action :move_to_index, except: :index
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  def index
    @images = Image.includes(:user).order("created_at DESC")
  end

  def new
    @image = Image.new
  end

  def create
    Image.create(image_params)
  end

  def destroy
    @image.destroy if @image.user_id == current_user.id
  end

  def edit
  end

  def show
    @comments = @image.comments.includes(:user)
    @likes_count = Like.where(image_id: @image.id).count
  end

  def update
    @image.update(update_params) if @image.user_id == current_user.id
  end

  private
  def image_params
    params.require(:image).permit(:image, :text).merge(user_id: current_user.id)
  end

  def update_params
    params.permit(:text, :image)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def set_image
    @image = Image.find(params[:id])
  end
end
