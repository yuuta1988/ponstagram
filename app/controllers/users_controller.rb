class UsersController < ApplicationController
  def show
    @name = current_user.name
    @images = current_user.images.where(user_id: current_user.id).order("created_at DESC")
  end
end
