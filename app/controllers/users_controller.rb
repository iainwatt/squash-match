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

  def new_profile

  end

  def log_win
    log_win = User.find(params[:id])
    log_win.wins = params[:challenge][:wins]
    log_win.save
    render json: log_win
  end

  def log_loss
    log_loss = User.find(params[:id])
    log_loss.losses = params[:challenge][:losses]
    log_loss.save
    render json: log_loss
  end


  def log_opponent_loss
    log_opponent_loss = User.find(params[:id])
    log_opponent_loss.losses = params[:challenge][:losses]
    log_opponent_loss.save
    render json: log_opponent_loss
  end

  def log_opponent_win
    log_opponent_win = User.find(params[:id])
    log_opponent_win.wins = params[:challenge][:wins]
    log_opponent_win.save
    render json: log_opponent_win
  end

  def new_user_elo
    new_user_elo = User.find(params[:id])
    new_user_elo.elo = params[:challenge][:elo]
    new_user_elo.save
    render json: new_user_elo
  end

  def new_opponent_elo
    new_opponent_elo = User.find(params[:id])
    new_opponent_elo.elo = params[:challenge][:elo]
    new_opponent_elo.save
    render json: new_opponent_elo
  end

  def match

  end



  def all_users
    all_app_users = User.all.to_json
    render json: all_app_users
  end


  


end