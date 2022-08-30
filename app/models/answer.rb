class Answer < ApplicationRecord
  belongs_to :proposal
  belongs_to :user

  def question
    proposal.question
  end
end
