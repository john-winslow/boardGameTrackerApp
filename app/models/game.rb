class Game < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many   :user_games
  has_many   :users, through: :user_games
  has_many   :votes, as: :voteable
  has_many   :comments, as: :commentable
  has_many   :tags
end
