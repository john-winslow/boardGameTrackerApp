class User < ApplicationRecord

  has_secure_password

  has_many :created_games, foreign_key: 'creator_id'
  has_many :games, class_name: 'Game'
  has_many :comments, as: :commentable
  has_many :comments, foreign_key: 'author_id'
  has_many :votes, foreign_key: 'voter_id'
end
