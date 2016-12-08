class Game < ApplicationRecord
  has_many   :game_tags
  has_many   :tags, through: :game_tags
  belongs_to :creator, class_name: 'User'
  has_many   :user_games
  has_many   :users, through: :user_games
  has_many   :votes, as: :voteable
  has_many   :comments, as: :commentable
end
