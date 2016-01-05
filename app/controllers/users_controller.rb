class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :ensure_user, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = sign_up(user_params)

    if @user.valid?
      sign_in(@user)
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :username,
      :first_name,
      :last_name
    )
  end

  def ensure_user
    user = User.find(params[:id])
    unless current_user == user
      redirect_to user_path(user)
    end
  end
end
