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
  has_many(:challenges, :foreign_key => :player1_id, :dependent => :destroy)
  has_many(:reverse_challenges, :class_name => :Challenge, :foreign_key => :player2_id, :dependent => :destroy)

end
