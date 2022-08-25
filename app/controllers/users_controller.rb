class UsersController < ApplicationController

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to dashboard_path
    authorize @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :avatar)
  end
end
