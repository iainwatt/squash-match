class ChallengesController < ApplicationController


 def index
  challenges = Challenge.all.to_json(:include => [:court, :centre])
  render json: challenges
 end

 def accept_challenge

    accept_challenge = Challenge.find(params[:id]) 
    accept_challenge.status = "Game on!"
    accept_challenge.player2_id = params[:challenge][:player2_id]
    accept_challenge.save
    render json: accept_challenge 
    flash[:notice] = "Challenge Accepted"
  end

 # def get_challenge_data
 #  challenges = Challenge.all.to_json(:include => [:court, :centre])
 #  users = User.all
 #  all_challenge_data = {user: users, challenges: challenges}
 #  JSON.parse(all_challenge_data)
 # end


 def create
  challenge = Challenge.create(params.require(:challenges).permit(:player1_id, :court_id, :centre_id))
  challenge.status = "pending"
  challenge.save
  render json: challenge
 end

end