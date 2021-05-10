class ReviewSerializer < ActiveModel::Serializer
    attributes :id, :username, :rating, :comment, :date, :movie
    belongs_to :movie
    def movie
      self.movie
    end
  end