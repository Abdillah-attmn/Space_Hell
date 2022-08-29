class Question < ApplicationRecord
  belongs_to :game
  has_many :proposals
  validates :content, presence: true
end
