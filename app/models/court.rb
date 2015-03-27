class Court < ActiveRecord::Base
  belongs_to :centre
  belongs_to :user
end
