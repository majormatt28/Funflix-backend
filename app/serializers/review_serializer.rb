class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :rating, :comment, :date, :movie_id, :api_id
   
end
