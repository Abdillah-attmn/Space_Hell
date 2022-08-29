class Score < ApplicationRecord
  belongs_to :user
  belongs_to :game
  validates :point, presence: true
end
