class User < ApplicationRecord
  has_many :scores
  has_many :games
  has_many :answers
  validates :firstname, uniqueness: { scope: :lastname }
  validates :email, uniqueness: true
  validates :encrypted_password, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
