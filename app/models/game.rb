class Game < ApplicationRecord
  has_many :scores, dependent: :destroy
  has_many :games, through: :scores
  has_many :questions, dependent: :destroy
  has_many :proposals, through: :questions
  has_many :answers, through: :proposals
  validates_presence_of :title
  has_one_attached :photo_game
end
