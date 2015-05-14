class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :camera

  default_scope {order('id ASC')}
end
