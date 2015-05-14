class CameraSerializer < ActiveModel::Serializer
  attributes :brand, :model, :price, :product_photo, :description

  has_many :reviews
  has_many :samples

end
