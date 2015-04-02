class ChallengesController < ApplicationController


 def index
  challenges = Challenge.all.to_json(:include => [:court, :centre, :player1])
  render json: challenges
 end


# should be called challenge_opponenet 
 def accept_challenge

    accept_challenge = Challenge.find(params[:id]) 
    accept_challenge.status = "Game on!"
    accept_challenge.player2_id = params[:challenge][:player2_id]
    accept_challenge.save
    render json: accept_challenge 
    flash[:notice] = "Challenge Accepted"
  end


 def create
  challenge = Challenge.create(params.require(:challenges).permit(:player1_id, :court_id, :centre_id))
  challenge.status = "pending"
  challenge.save
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