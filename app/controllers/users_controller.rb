class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @name = current_user.name
    @images = @user.images.order("created_at DESC")
  end

  def likes
    @user = User.find_by(id: params[:id])
    @likes = Like.where(user_id: @user.id)
  end

  def follower
    @user  = User.find(params[:id])
    render 'show_follower'
  end

  def followed
    @user  = User.find(params[:id])
    render 'show_followed'
  end

end
