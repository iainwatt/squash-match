class UsersController < ApplicationController




  def get_all_users
    users = User.all.to_json(include: [{ courts: {include: :centre }}, { challenges: {include: [:player2, :player1, :centre, :court]}}])
      render json: users
  end

  def current_user_profile
    @user = User.find(current_user.id)
    render json: @user 
  end

  def user_profile
    user = User.find(params[:id])
    render json: user 
  end

  def phone_profile

  end

  def all_users
    all_app_users = User.all.to_json
    render json: all_app_users
  end


  


end