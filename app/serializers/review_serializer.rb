class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :rating, :comment, :date, :movie
   
end