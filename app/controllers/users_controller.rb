class UsersController < ApplicationController


  def index
    @users = User.all
    @user = current_user
  end

  def show
    @user = current_user
  end

  def edit
  end
  
  def update
  end
  
  private
   
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
