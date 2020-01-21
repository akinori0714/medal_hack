class UsersController < ApplicationController

  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    redirect_to root_path
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