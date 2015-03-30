class Centre < ActiveRecord::Base
  has_many :courts
  has_many :challenges



end
