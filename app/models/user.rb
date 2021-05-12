class User < ApplicationRecord
    has_secure_password
    #user.authenticate("123")
    validates :age, numericality: {greater_than_or_equal_to: 15}
    validates :username, uniqueness: {case_sensitive: false}
    has_many :reviews
    has_many :movies, through: :reviews
end
