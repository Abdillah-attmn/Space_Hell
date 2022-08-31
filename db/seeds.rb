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

level_one = Game.create!(title: "part_one", content: "Let's go!")

first_question = Question.create!(content: "1 - What is the closest planet in the earth?", game: level_one)

first_proposal_question_one = Proposal.create!(content: "Mercure", question: first_question)
second_proposal_question_one = Proposal.create!(content: "Venus", question: first_question)
third_proposal_question_one = Proposal.create!(content: "Mars", question: first_question, correct: true)
fourth_proposal_question_one = Proposal.create!(content: "Moon", question: first_question)

second_question = Question.create!(content: "2 - What is the farest planet of solar system?", game: level_one)

first_proposal_question_two = Proposal.create!(content: "Pluton", question: second_question, correct: true)
second_proposal_question_two = Proposal.create!(content: "Saturn", question: second_question)
third_proposal_question_two = Proposal.create!(content: "Uranus", question: second_question)
fourth_proposal_question_two = Proposal.create!(content: "Neptun", question: second_question)

level_two = Game.create!(title: "part_two", content: "Let's go!")

first_question = Question.create!(content: "1 - What is the largest planet in the solar system?", game: level_two)

first_proposal_question_one = Proposal.create!(content: "Jupiter", question: first_question, correct: true)
second_proposal_question_one = Proposal.create!(content: "Earth", question: first_question)
third_proposal_question_one = Proposal.create!(content: "Saturn", question: first_question)
fourth_proposal_question_one = Proposal.create!(content: "Moon", question: first_question)

second_question = Question.create!(content: " 2 - What is the name of the European rocket?", game: level_two)

first_proposal_question_two = Proposal.create!(content: "Ariadne", question: second_question, correct: true)
second_proposal_question_two = Proposal.create!(content: "Apollo", question: second_question)
third_proposal_question_two = Proposal.create!(content: "Travel", question: second_question)
fourth_proposal_question_two = Proposal.create!(content: "Nautilus", question: second_question)

third_question = Question.create!(content: "3 - Besides the Moon, what is the closest planet to Earth?", game: level_two)

first_proposal_question_three = Proposal.create!(content: "March", question: third_question, correct: true)
second_proposal_question_three = Proposal.create!(content: "Saturn", question: third_question)
third_proposal_question_three = Proposal.create!(content: "Pluto", question: third_question)
fourth_proposal_question_three = Proposal.create!(content: "Uranus", question: third_question)

level_three = Game.create!(title: "part_three", content: "Let's go!")

first_question = Question.create!(content: "1 - Who is the first man to walk on the moon?", game: level_three)

first_proposal_question_one = Proposal.create!(content: "Yuri Gagarin", question: first_question)
second_proposal_question_one = Proposal.create!(content: "Buzz Aldrin", question: first_question)
third_proposal_question_one = Proposal.create!(content: "Neil Armstrong", question: first_question, correct: true)
fourth_proposal_question_one = Proposal.create!(content: "Moon light", question: first_question)

second_question = Question.create!(content: "2 - What is the closest star to Earth?", game: level_three)

first_proposal_question_two = Proposal.create!(content: "The Sun", question: second_question, correct: true)
second_proposal_question_two = Proposal.create!(content: "The moon", question: second_question)
third_proposal_question_two = Proposal.create!(content: "Alpha Centauri", question: second_question)
fourth_proposal_question_two = Proposal.create!(content: "Big dog", question: second_question)

third_question = Question.create!(content: "3 - What is the name of the gigantic
                                                explosion with which the universe began?", game: level_three)

first_proposal_question_three = Proposal.create!(content: "The Bang-Bang", question: third_question)
second_proposal_question_three = Proposal.create!(content: "Bling Bling", question: third_question)
third_proposal_question_three = Proposal.create!(content: "The Big Bang", question: third_question, correct: true)
fourth_proposal_question_three = Proposal.create!(content: "The Big-Joke ", question: third_question)

fourth_question = Question.create!(content: "4 - Since 2006, which planet is no longer part of the solar system?", game:level_three)

first_proposal_question_three = Proposal.create!(content: "Uranus", question: third_question)
second_proposal_question_three = Proposal.create!(content: "Saturn", question: third_question)
third_proposal_question_three = Proposal.create!(content: "Pluto", question: third_question, correct: true)
fourth_proposal_question_three = Proposal.create!(content: "Namek", question: third_question)

level_four = Game.create!(title: "part_four", content: "Let's go!")

first_question = Question.create!(content: "1 - In what year did the first man walk on the moon?", game: level_four)

first_proposal_question_one = Proposal.create!(content: "1968", question: first_question)
second_proposal_question_one = Proposal.create!(content: "1969", question: first_question, correct: true)
third_proposal_question_one = Proposal.create!(content: "1970", question: first_question)
fourth_proposal_question_one = Proposal.create!(content: "1945", question: first_question)

second_question = Question.create!(content: "2 - What is the moment when the moon hides the sun called?", game: level_four)

first_proposal_question_two = Proposal.create!(content: "The Big Bang", question: second_question)
second_proposal_question_two = Proposal.create!(content: "An eruption", question: second_question)
third_proposal_question_two = Proposal.create!(content: "An Eclipse", question: second_question, correct: true)
fourth_proposal_question_two = Proposal.create!(content: "SuperNova", question: second_question)

third_question = Question.create!(content: "3 - What is the Earth surrounded by?", game: level_four)

first_proposal_question_three = Proposal.create!(content: "From a layer of air, the atmosphere", question: third_question)
second_proposal_question_three = Proposal.create!(content: "From Martians", question: third_question)
third_proposal_question_three = Proposal.create!(content: "water", question: third_question, correct: true)
fourth_proposal_question_three = Proposal.create!(content: "From Cloud", question: third_question)

fourth_question = Question.create!(content: "4 - The Sun is more precisely?", game: level_four)

first_proposal_question_three = Proposal.create!(content: "A planet", question: third_question)
second_proposal_question_three = Proposal.create!(content: "A star", question: third_question, correct: true)
third_proposal_question_three = Proposal.create!(content: "A Rift in Space", question: third_question)
fourth_proposal_question_three = Proposal.create!(content: "Asteroid", question: third_question)

fifth_question = Question.create!(content: "5 - The largest planet in the Milky Way is?", game: level_four)

first_proposal_question_three = Proposal.create!(content: "Vegeta", question: third_question)
second_proposal_question_three = Proposal.create!(content: "Saturn", question: third_question)
third_proposal_question_three = Proposal.create!(content: "Pluto", question: third_question)
fourth_proposal_question_three = Proposal.create!(content: "Jupiter", question: third_question, correct: true)

level_five = Game.create!(title: "part_five", content: "Let's go!")

first_question = Question.create!(content: "1 - In what year did the first man walk on the moon?", game: level_five)

first_proposal_question_one = Proposal.create!(content: "1968", question: first_question)
second_proposal_question_one = Proposal.create!(content: "1969", question: first_question, correct: true)
third_proposal_question_one = Proposal.create!(content: "1970", question: first_question)
fourth_proposal_question_one = Proposal.create!(content: "1945", question: first_question)

second_question = Question.create!(content: "2 - What is the moment when the moon hides the sun called?", game: level_five)

first_proposal_question_two = Proposal.create!(content: "The Big Bang", question: second_question)
second_proposal_question_two = Proposal.create!(content: "An eruption", question: second_question)
third_proposal_question_two = Proposal.create!(content: "An Eclipse", question: second_question, correct: true)
fourth_proposal_question_two = Proposal.create!(content: "SuperNova", question: second_question)

third_question = Question.create!(content: "3 - What is the Earth surrounded by?", game: level_five)

first_proposal_question_three = Proposal.create!(content: "From a layer of air, the atmosphere", question: third_question)
second_proposal_question_three = Proposal.create!(content: "From Martians", question: third_question)
third_proposal_question_three = Proposal.create!(content: "water", question: third_question, correct: true)
fourth_proposal_question_three = Proposal.create!(content: "From Cloud", question: third_question)

fourth_question = Question.create!(content: "4 - The Sun is more precisely?", game: level_five)

first_proposal_question_three = Proposal.create!(content: "A planet", question: third_question)
second_proposal_question_three = Proposal.create!(content: "A star", question: third_question, correct: true)
third_proposal_question_three = Proposal.create!(content: "A Rift in Space", question: third_question)
fourth_proposal_question_three = Proposal.create!(content: "Asteroid", question: third_question)

fifth_question = Question.create!(content: "5 - The largest planet in the Milky Way is?", game: level_five)

first_proposal_question_three = Proposal.create!(content: "Vegeta", question: third_question)
second_proposal_question_three = Proposal.create!(content: "Saturn", question: third_question)
third_proposal_question_three = Proposal.create!(content: "Pluto", question: third_question)
fourth_proposal_question_three = Proposal.create!(content: "Jupiter", question: third_question, correct: true)

sixth_question = Question.create!(content: "6 - The explosion of a Sun is called?", game: evel_five)

first_proposal_question_three = Proposal.create!(content: "Big Bang", question: third_question)
second_proposal_question_three = Proposal.create!(content: "Nova", question: third_question)
third_proposal_question_three = Proposal.create!(content: "supernova", question: third_question, correct: true)
fourth_proposal_question_three = Proposal.create!(content: "Love at first sight", question: third_question)

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
