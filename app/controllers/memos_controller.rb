class MemosController < ApplicationController

  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Meomo.new(memo_params)
    if @memo.save
      redirect to memos_path
    else
      render :new
    end  
  end

  private
  def memo_params
    params.require(:memo).permit(:title, :body, industry_id).merge(user_id: current_user.id)
  end
end
