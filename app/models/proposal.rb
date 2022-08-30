class Proposal < ApplicationRecord
  belongs_to :question
  has_many :answers, dependent: :destroy
  validates :content, presence: true
end
