class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :rating, :comment, :date, :movie_id, :user_id
   
end
