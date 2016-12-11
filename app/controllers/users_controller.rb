class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      redirect_to questions_path
    else
      flash[:notice] = @users.errors.full_message
      render 'new'
    end
  end

  def show
    if logged_in?
      @user = current_user
    else
      render session_new_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end

end
