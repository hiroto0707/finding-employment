class EnterprisesController < ApplicationController
  before_action :set_enterprise, only: [:show, :edit, :update, :destroy]

  def index
    @enterprises = Enterprise.includes(:user).order(industry_id: :desc)
    
  end

  def new
    @enterprise = Enterprise.new
  end

  def create
    @enterprise = Enterprise.new(enterprise_params)
    if @enterprise.save
      redirect_to root_path
    else
      render :new
    end  
  end

  def show
  end

  def edit
  end

  def update
    if @enterprise.update(enterprise_params)
      redirect_to enterprises_path
    else
      render :edit
    end  
  end

  def destroy
    @enterprise.destroy
    redirect_to enterprises_path
  end


  private

  def set_enterprise
    @enterprise = Enterprise.find(params[:id])
  end


  def enterprise_params
    params.require(:enterprise).permit(:title, :text, :theme, :industry_id).merge(user_id: current_user.id)
  end
end
