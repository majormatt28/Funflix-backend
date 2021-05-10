class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :rating, :comment, :date
   
end
