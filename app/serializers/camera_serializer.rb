class CameraSerializer < ActiveModel::Serializer
  attributes :id, :brand, :model, :price, :product_photo, :description, :zoom_range, :resolution 

  has_many :reviews
  has_many :samples

end
