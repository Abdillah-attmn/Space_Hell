# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Answer.destroy_all
Proposal.destroy_all
Question.destroy_all
Score.destroy_all
Game.destroy_all
User.destroy_all

game = Game.create!(title: "part_one",
                    content: "Let's go!")

first_question = Question.create!(content: "What is the closest planet in the earth?",
                                  game:)
first_proposal_question_one = Proposal.create!(content: "Mercure", question: first_question)
second_proposal_question_one = Proposal.create!(content: "Venus", question: first_question)
third_proposal_question_one = Proposal.create!(content: "Mars", question: first_question, correct: true)
fourth_proposal_question_one = Proposal.create!(content: "Moon", question: first_question)

second_question = Question.create!(content: "What is the farest planet of solar system?",
                                   game:)
first_proposal_question_two = Proposal.create!(content: "Pluton", question: second_question, correct: true)
second_proposal_question_two = Proposal.create!(content: "Saturn", question: second_question)
third_proposal_question_two = Proposal.create!(content: "Uranus", question: second_question)
fourth_proposal_question_two = Proposal.create!(content: "Neptun", question: second_question)

third_question = Question.create!(content: "What is the biggest planet of solar system?",
                                  game:)
first_proposal_question_three = Proposal.create!(content: "Netun", question: third_question)
second_proposal_question_three = Proposal.create!(content: "Saturn", question: third_question)
third_proposal_question_three = Proposal.create!(content: "Uranus", question: third_question)
fourth_proposal_question_three = Proposal.create!(content: "Jupiter", question: third_question, correct: true)

2.times do
  User.create!(firstname: Faker::Name.first_name, lastname: Faker::Name.last_name,
               email: Faker::Internet.email, password: "password")
end
first_user = User.first
last_user = User.last

first_attempt_user_one = Answer.new(user: first_user)
# first_attempt_user_one.proposal.question = first_question
first_attempt_user_one.proposal = second_proposal_question_one
first_attempt_user_one.save!

second_attempt_user_one = Answer.new(user: first_user)
second_attempt_user_one.proposal = first_proposal_question_two
second_attempt_user_one.save!

first_attempt_user_two = Answer.new(user: last_user)
first_attempt_user_two.proposal = third_proposal_question_three
first_attempt_user_two.save!
