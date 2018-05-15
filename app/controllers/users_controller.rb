class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = current_user.name
    @images = user.images.order("created_at DESC")
  end
end
