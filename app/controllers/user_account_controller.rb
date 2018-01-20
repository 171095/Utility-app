class UserAccountController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update_account
    @user = User.find(params[:id])
    if @user.update(user_account_params)
      sign_in(@user, :bypass => true)
      redirect_to user_account_path 
    end
  end

  private
    def user_account_params
      params.require(:user_account).permit(:email, :password, :password_confirmation, :name, :contact, :profile_photo)
    end
end
