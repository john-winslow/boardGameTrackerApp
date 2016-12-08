class Tag < ApplicationRecord
  validates_uniqueness_of :name
  has_many :game_tags
  has_many :games, through: :game_tags
end
