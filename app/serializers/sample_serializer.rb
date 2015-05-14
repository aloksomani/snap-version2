class SampleSerializer < ActiveModel::Serializer
  attributes :photo_url, :thumb_url

  def photo_url
    object.photo.url
  end

  def thumb_url
    object.photo.thumb.url
  end

end
