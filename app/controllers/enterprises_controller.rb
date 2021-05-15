class EnterprisesController < ApplicationController
  def index
    @enterprises = Enterprise.all
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

  private

  def enterprise_params
    params.require(:enterprise).permit(:title, :text, :theme, :industry_id).marge(user_id: current_user.id)
  end
end
