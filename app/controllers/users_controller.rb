class UsersController < ApplicationController

  def account
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
      InquiryMailer.mail(current_user).deliver
    else
      render :edit
    end
  

  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end