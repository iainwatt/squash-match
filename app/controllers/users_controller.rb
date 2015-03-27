class UsersController < ApplicationController

  def get_all_users
    users = User.all.to_json(:include => [:challenges, :courts])
    render json: users
  end

  def current_user_profile
    @user = User.find(current_user.id)
    render json: @user 
   
  end

  


end