class CameraSerializer < ActiveModel::Serializer
  attributes :brand, :model, :price, :product_photo, :description
end
