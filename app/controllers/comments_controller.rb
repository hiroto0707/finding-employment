class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to 
    else
    end

  end

  private
  def commentt_params
    params.require(:commnet).permit(:text).merge(user_id: current_user.id, enterprise_id: params[:enterprise_id])
  end
  end

end