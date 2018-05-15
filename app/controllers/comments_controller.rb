class CommentsController < ApplicationController
  def create
    @comment = Comment.create(text: params[:text], image_id: params[:image_id], user_id: current_user.id)
    redirect_to "/images/#{@comment.image.id}"
  end

  private
  def comment_params
    params.permit(:text, :image_id)
  end
end
