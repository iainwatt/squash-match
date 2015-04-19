class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   before_create :set_default_elo
   before_create :set_default_tagline
   before_create :set_ninja_rank
   before_save :set_default_tagline
  #  if self.user_image.url = nil 
  #   self.user_image.url = 'blanca/jpg'
  # end

   mount_uploader :user_image, UserImageUploader

  # GRAVATASTIC #
  include Gravtastic
  gravtastic :default => "wavatar", :size => 400

# ASSOCIATIONS #
  has_many :courts

  has_many :challenges, :foreign_key => :player1_id
  has_many :users, :through => :challenges, :source => :player2_id

  has_many(:challenges, :foreign_key => :player2_id, :dependent => :destroy)
  has_many(:reverse_challenges, :class_name => :Challenge, :foreign_key => :player2_id, :dependent => :destroy)


  # def set_default_elo
  #   self.elo = 1000
  # end

  def set_default_image 
    self.user_image = 'blanca/jpg'
  end

  def set_default_tagline
    self.tagline = ["I came here to do 2 things, drink beer and kick ass...", "You talking to me ?", "You’re a funny guy Sully, I like you. That’s why I’m going to kill you last", "Go ahead make my day", "Do I feel lucky…well, do ya punk ?", "I eat Green Berets for breakfast...", "Come with me if you want to live", "Where's my money? I'm getting real tired of you duckin' me..", "Put the bunny back in the box..", "Sh*t just got real..", "you cant be serious", "I thought it was out....", "The most decorated captain in the black berets", "Run fast or be last", "Some call them opponents, I call them victims.", "I eat lightning and crap thunder", "Losers complain…champions train", "My warm up is your work out."].sample
  end  

  def set_ninja_rank 
    if elo == 2800 
      self.rank = "Kage"
    elsif elo == (2400..2799)
      self.rank = "Jonin"
    elsif elo == (2100..2399)
      self.rank = "Chūnin"
    elsif elo == (1700..2099)
      self.rank = "Genin"
    else 
      self.rank = "Young grasshopper"
    end
  end


  # def prevent_overbooking 
  #   current_user.courts.maxlength = 2
  #   if current_user.courts.count >= 2 
  #     errors.add(:base, 'Sorry, only 2 bookings courts allowed per day') 
  #   end
  # end
  # validates :prevent_overbooking, on: :create



end



