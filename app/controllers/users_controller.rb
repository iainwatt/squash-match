class UsersController < ApplicationController


# I need lots more data to come through in this request

  def get_all_users
    users = User.all.to_json(include: [{ courts: {include: :centre }}, { challenges: {include: [:player2, :player1, :centre, :court]}}])
    render json: users
  end





  def current_user_profile
    @user = User.find(current_user.id)
    render json: @user 
  end

  


end