class MemosController < ApplicationController

  def index
    if params[:industry_id]
      @industrys = Industry.find(params[:industry_id])
      @memos = @industrys.post.order(industry_id: :desc).all
    else
      @memos = Memo.order(industry_id: :desc).all
    end
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to memos_path
    else
      render :new
    end  
  end

  private
  def memo_params
    params.require(:memo).permit(:title, :body, :industry_id).merge(user_id: current_user.id)
  end
end
