class Question < ApplicationRecord
  belongs_to :game
  has_many :proposals, dependent: :destroy
  has_many :answers, through: :proposals
  validates :content, presence: true
end
