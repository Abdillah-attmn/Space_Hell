class Proposal < ApplicationRecord
  belongs_to :question
  has_many :answers
  validates :content
end
