class User < ApplicationRecord

  has_secure_password

  has_many :created_games, foreign_key: 'creator_id', class_name: 'Game'
  has_many :user_games
  has_many :games, through: :user_games
  has_many :comments, as: :commentable
  has_many :votes, foreign_key: 'voter_id'
  has_many :relationships
end
