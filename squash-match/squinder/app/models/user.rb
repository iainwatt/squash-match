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

end




# has_many :user_matches, :foreign_key => :dog_requester_id
#   has_many :users, :through => :user_matches, :source => :dog_requestee
#   has_many(:user_matches, :foreign_key => :dog_requester_id, :dependent => :destroy)
#   has_many(:reverse_user_matches, :class_name => :UserMatch, :foreign_key => :dog_requestee_id, :dependent => :destroy)