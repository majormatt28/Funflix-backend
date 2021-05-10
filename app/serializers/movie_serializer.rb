class MovieSerializer < ActiveModel::Serializer
    attributes :id, :title, :description, :genre, :image, :release_date
    
    has_many :reviews
  end