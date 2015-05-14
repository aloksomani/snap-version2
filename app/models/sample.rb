class Sample < ActiveRecord::Base
  belongs_to :user
  belongs_to :camera

  #image uploader from carrierwave
  mount_uploader :photo, ImageUploader
end
