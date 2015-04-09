class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

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


  # def prevent_overbooking 
  #   current_user.courts.maxlength = 2
  #   if current_user.courts.count >= 2 
  #     errors.add(:base, 'Sorry, only 2 bookings courts allowed per day') 
  #   end
  # end
  # validates :prevent_overbooking, on: :create



end



