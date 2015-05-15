class CameraSerializer < ActiveModel::Serializer
  attributes :id, :brand, :model, :price, :product_photo, :description

  has_many :reviews
  has_many :samples

end
