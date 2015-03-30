class ChallengesController < ApplicationController


 def index
  challenges = Challenge.all.to_json(:include => [:court, :centre])
  render json: challenges
 end

 def get_challenge_data
  challenges = Challenge.all.to_json(:include => [:court, :centre])
  users = User.all
  all_challenge_data = {user: users, challenges: challenges}
  JSON.parse(all_challenge_data)
 end


 def create
  challenge = Challenge.create(params.require(:challenges).permit(:player1_id, :court_id, :centre_id))
  challenge.status = "pending"
  challenge.save
  render json: challenge
 end

end