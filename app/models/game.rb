class Game < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many   :users
  has_many   :votes, as: :voteable
  has_many   :comments, as: :commentable
  has_many   :tags
end
