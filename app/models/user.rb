class User < ApplicationRecord
  has_many :scores, dependent: :destroy
  has_many :games, through: :scores
  has_many :answers, dependent: :destroy
  validates_presence_of :nickname
  validates :firstname, presence: true, uniqueness: { scope: :lastname }
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
  has_one_attached :photo_avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def remaining_questions(game)
    game.questions.reject do |question|
      question.answers.select { |answer| answer.user == self }.any?
    end
    # answered_question_ids = answers.map { |answer| answer.question.id }
    # game.questions.where.not(id: answered_question_ids)
  end

  def total_score
    return scores.map(&:point).sum
  end
end
