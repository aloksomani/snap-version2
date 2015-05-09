class User < ActiveRecord::Base
  has_many :reviews
  has_many :samples

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :address_line_1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true


  
end
