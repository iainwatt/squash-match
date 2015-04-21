class Challenge < ActiveRecord::Base

  belongs_to :player1, class_name: 'User'
  belongs_to :player2, class_name: 'User'
  belongs_to :centre
  belongs_to :court
 
 # player2 needs to be changed to has_many association 

# this is stack overflow solution to only allowing x amount 
#  class Challenge <ActiveRecord::Base
#   belongs_to :player1, class_name: 'User'
#   validate :thing_count_within_limit, :on => :create

#   def thing_count_within_limit
#     if self.user.challenges(:reload).count >= 2
#       errors.add(:base, "Only 2 bookings allowed per day")
#     end
#   end
# end

 
  
end
