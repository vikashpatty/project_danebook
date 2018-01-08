class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, as: :likeable
  # has_many :comments, as: :commentable

  def has_likes?
    likes.count > 0
  end
end
