class Vote < ApplicationRecord
  belongs_to :voteable, polymorphic: true
  belongs_to :voter, class_name: 'User'
end
