class ChallengesController < ApplicationController


 def index
  challenges = Challenge.all.to_json 
  render json: challenges
 end

 def create
  challenge = Challenge.create(params.require(:challenge).permit(:player1_id, :player2_id))
  render json: challenge
 end

end