class Answer < ApplicationRecord
  belongs_to :proposal
  belongs_to :user
end
