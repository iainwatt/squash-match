class Challenge < ActiveRecord::Base

  belongs_to :user, class_name: 'User', foreign_key: 'player1'
  belongs_to :user, class_name: 'User', foreign_key: 'player2'
  belongs_to :centre
  belongs_to :court
 

 
  
end
