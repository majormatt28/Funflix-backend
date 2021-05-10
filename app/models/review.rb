class Review < ApplicationRecord
    belongs_to :user
    belongs_to :movie
    
    def username
        self.user.username
    end

    def date
        self.created_at.strftime(" on %Y/%m/%d ")
    end
end
