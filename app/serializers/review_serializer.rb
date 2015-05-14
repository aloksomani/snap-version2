class ReviewSerializer < ActiveModel::Serializer
  attributes :rating, :description, :reviewer

  def reviewer
    object.user
  end

end
