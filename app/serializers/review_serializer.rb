class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :description, :reviewer

  def reviewer
    object.user
  end

end
