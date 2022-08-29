class Game < ApplicationRecord
  belongs_to :user
  has_many :scores
  has_many :questions
  has_many :proposals, through: :questions
  has_many :answers, through: :proposals
  validates_presence_of :title
  validates_presence_of :category
end
