class MemosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_memo, only: [:edit, :update, :destroy]
  before_action :move_to_root_path, only: [:edit, :update, :destroy]
  
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
    if @memo.update(memo_params)
      redirect_to memos_path
    else
      render :edit
    end  
  end

  def destroy
    @memo.destroy
    redirect_to memos_path
  end

  private
  
  def set_memo
    @memo = Memo.find(params[:id])
  end

  def move_to_root_path 
    unless user_signed_in? && current_user.id == @memo.user_id
      redirect_to root_path
    end  
  end

  def memo_params
    params.require(:memo).permit(:title, :selection_status, :body, :industry_id).merge(user_id: current_user.id)
  end
end


