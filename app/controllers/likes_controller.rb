class LikesController < ApplicationController

  before_action :authenticate_user!

  def create
    @like = Like.new(
      user_id:  current_user.id,
      image_id: params[:image_id]
      )
    @like.save
    redirect_to("/images/#{params[:image_id]}")
  end

  def destroy
    @like = Like.find_by(
      user_id:  current_user.id,
      image_id: params[:image_id]
      )
    @like.destroy
    redirect_to("/images/#{params[:image_id]}")
  end

end
