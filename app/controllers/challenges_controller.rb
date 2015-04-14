class ChallengesController < ApplicationController


 def index
  challenges = Challenge.all.to_json(:include => [:court, :centre, :player1])
  render json: challenges
 end



 def challenge_opponent
    challenge_opponent = Challenge.find(params[:id]) 
    challenge_opponent.status = "pending"
    challenge_opponent.player2_id = params[:challenge][:player2_id]
    challenge_opponent.save
    render json: challenge_opponent 
  end

  # def challenge_accepted
  #   challenge_accepted = Challenge.find(params[:id]) 
  #   challenge_accepted.status = "accepted"
  #   challenge_accepted.save
  #   render json: challenge_accepted 
  # end


 def create
  challenge = Challenge.create(params.require(:challenges).permit(:player1_id, :court_id, :centre_id))
  challenge.status = nil 
  challenge.save
  render json: challenge
 end

 def end_challenge
  challenge = Challenge.find(params[:id])
  challenge.destroy
  render json: challenge
 end


 # def accept_challenge
  #   find challenge 
  #   overwrite all player2 data with this user id
  # update all users view so that they now do not see this challenge 
  # end 

  # def challenge_user
  #   update player2 with id of this user 
  # end

end