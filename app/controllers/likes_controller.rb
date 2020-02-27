class LikesController < ApplicationController
  def create 
    Like.create!(like_params)
    return head :no_content
  end

  private
  def like_params
    params.require(:like).permit(:post_id, :user_id)
  end
end
