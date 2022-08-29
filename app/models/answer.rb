class Answer < ApplicationRecord
  belongs_to :proposal
  belongs_to :question
  belongs_to :user
end
