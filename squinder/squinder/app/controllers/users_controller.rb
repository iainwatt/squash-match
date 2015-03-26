class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def current_user_profile
    @user = User.find(current_user.id)
    render json: @user 
  end

end