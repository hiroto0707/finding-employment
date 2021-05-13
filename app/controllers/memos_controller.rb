class MemosController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  
  def index
    @memos = current_user.memos.order(industry_id: :desc).all
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

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def memo_params
    params.require(:memo).permit(:title, :selection_status, :body, :industry_id).merge(user_id: current_user.id)
  end
end


