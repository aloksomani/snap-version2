class Camera < ActiveRecord::Base
  has_many :reviews
  has_many :samples
  has_and_belongs_to_many :profiles

  
end
