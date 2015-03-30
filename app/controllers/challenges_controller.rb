class ChallengesController < ApplicationController


 def index
  challenges = Challenge.all.to_json
  render json: challenges
 end


 def create
  challenge = Challenge.create(params.require(:challenges).permit(:player1_id))
  challenge.status = "pending"
  challenge.save
  render json: challenge
 end

end