class UsersController < ApplicationController  
 
  def show
    @user = User.find(params[:id])
    @enterprises = @user.enterprises
  end
end
