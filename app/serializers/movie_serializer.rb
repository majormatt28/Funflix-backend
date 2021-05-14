class MovieSerializer < ActiveModel::Serializer
    attributes :id, :title, :description, :genre, :image, :release_date, :average_rating
    
    has_many :reviews

    # def reviews
    #     if self.object.reviews.length >0

    #     end
    # end
  end