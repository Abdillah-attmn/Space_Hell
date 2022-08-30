class User < ApplicationRecord
  has_many :scores, dependent: :destroy
  has_many :games, through: :scores
  has_many :answers, dependent: :destroy
  validates :firstname, uniqueness: { scope: :lastname }
  validates :email, uniqueness: true
  validates :encrypted_password, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def remaining_questions(game)
    questions = game.questions
    questions.joins(:answers).where.not(answers: { user_id: self.id })

    # answered_question_ids = answers.map { |answer| answer.question.id }
    # game.questions.where.not(id: answered_question_ids)
  end
end
