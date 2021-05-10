class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :age, :password_digest

    has_many :reviews
    has_many :movies
  end