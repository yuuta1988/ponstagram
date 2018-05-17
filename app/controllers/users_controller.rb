class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = current_user.name
    @images = @user.images.order("created_at DESC")
  end

  def likes
    @user = User.find_by(id: params[:id])
    @likes = Like.where(user_id: @user.id)
  end
end
