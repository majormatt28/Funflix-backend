class Movie < ApplicationRecord
    has_many  :reviews
    has_many :users, through: :reviews

    def average_rating
        if self.reviews.length > 0
            (self.reviews.map {|rev| rev.rating}.sum/self.reviews.length).to_f
        else
            "This movie has no rating yet!"
        end
    end
end
