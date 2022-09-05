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
Message.destroy_all
Chatroom.destroy_all
User.destroy_all

Chatroom.create!(name: "The Great Chat")
level_one = Game.create!(title: "level 1", content: "Let's go!")

first_question = Question.create!(content: "What is the closest planet in the earth?",
                                  game: level_one, image: "https://static.videezy.com/system/resources/previews/000/005/499/original/Earth_Spin_In_Hands.mp4")

Proposal.create!(content: "Mercury", question: first_question)
second_proposal_question_one = Proposal.create!(content: "Venus", question: first_question, correct: true)
Proposal.create!(content: "Mars", question: first_question)
Proposal.create!(content: "Moon", question: first_question)

second_question = Question.create!(content: "What is the farest planet of solar system?", game: level_one, image: "https://static.videezy.com/system/resources/previews/000/039/000/original/alb_space2006_1080p.mp4")

first_proposal_question_two = Proposal.create!(content: "Pluto", question: second_question)
Proposal.create!(content: "Saturn", question: second_question)
Proposal.create!(content: "Uranus", question: second_question)
Proposal.create!(content: "Neptune", question: second_question, correct: true)

level_two = Game.create!(title: "level 2", content: "Let's go!")

first_question = Question.create!(content: "What is the largest planet in the solar system?", game: level_two, image: "https://static.videezy.com/system/resources/previews/000/053/043/original/22649_Planets_on_the_galaxy_HD_BG.mp4")

Proposal.create!(content: "Jupiter", question: first_question, correct: true)
Proposal.create!(content: "Earth", question: first_question)
third_proposal_question_three = Proposal.create!(content: "Saturn", question: first_question)
Proposal.create!(content: "Moon", question: first_question)

second_question = Question.create!(content: "What is the name of the European rocket?", game: level_two, image: "https://static.videezy.com/system/resources/previews/000/037/624/original/cohete_fondo_espacio.mp4")

Proposal.create!(content: "Ariane", question: second_question, correct: true)
Proposal.create!(content: "Apollo", question: second_question)
Proposal.create!(content: "Travel", question: second_question)
Proposal.create!(content: "Nautilus", question: second_question)

third_question = Question.create!(content: "Besides the Moon, what is the closest planet to Earth?", game: level_two,
                                  image: "https://static.videezy.com/system/resources/previews/000/038/506/original/alb_earth1005_1080p_24fps.mp4")

Proposal.create!(content: "Mars", question: third_question, correct: true)
Proposal.create!(content: "Saturn", question: third_question)
Proposal.create!(content: "Pluto", question: third_question)
Proposal.create!(content: "Uranus", question: third_question)

level_three = Game.create!(title: "level 3", content: "Let's go!")

first_question = Question.create!(content: "Who is the first man to walk on the moon?", game: level_three, image: "https://static.videezy.com/system/resources/previews/000/037/097/original/4k-blades_of-grass-big-moon-on-night-sky-background.mp4")

Proposal.create!(content: "Yuri Gagarin", question: first_question)
Proposal.create!(content: "Buzz Aldrin", question: first_question)
Proposal.create!(content: "Neil Armstrong", question: first_question, correct: true)
Proposal.create!(content: "Moon light", question: first_question)

second_question = Question.create!(content: "What is the closest star to Earth?", game: level_three, image: "https://static.videezy.com/system/resources/previews/000/047/286/original/stockvideo_05771k.mp4")

Proposal.create!(content: "The Sun", question: second_question, correct: true)
Proposal.create!(content: "The moon", question: second_question)
Proposal.create!(content: "Alpha Centauri", question: second_question)
Proposal.create!(content: "Big dog", question: second_question)

third_question = Question.create!(content: "What is the name of the gigantic
                                                explosion with which the universe began?", game: level_three, image: "https://static.videezy.com/system/resources/previews/000/051/938/original/2017_06_16-Particle-Explode1.mp4")

Proposal.create!(content: "Bang-Bang", question: third_question)
Proposal.create!(content: "big-Car", question: third_question)
Proposal.create!(content: "Big Bang", question: third_question, correct: true)
Proposal.create!(content: "Big-Joke ", question: third_question)

fourth_question = Question.create!(content: "Since 2006, which planet is no longer part of the solar system?",
                                   game: level_three, image: "https://static.videezy.com/system/resources/previews/000/054/672/original/4K_152.mp4")

Proposal.create!(content: "Uranus", question: fourth_question)
Proposal.create!(content: "Saturn", question: fourth_question)
Proposal.create!(content: "Pluto", question: fourth_question, correct: true)
Proposal.create!(content: "Namek", question: fourth_question)

level_four = Game.create!(title: "level 4", content: "Let's go!")

first_question = Question.create!(content: "In what year did the first man walk on the moon?",
                                  game: level_four, image: "https://static.videezy.com/system/resources/previews/000/022/287/original/4k-moon-flight-over-background.mp4")

Proposal.create!(content: "1968", question: first_question)
Proposal.create!(content: "1969", question: first_question, correct: true)
Proposal.create!(content: "1970", question: first_question)
Proposal.create!(content: "1945", question: first_question)

second_question = Question.create!(content: "What is the moment when the moon hides the sun called?", game: level_four,
                                   image: "https://static.videezy.com/system/resources/previews/000/024/852/original/4k-abstract-circle-strokes-animation-clip.mp4")

Proposal.create!(content: "Big Bang", question: second_question)
Proposal.create!(content: "Eruption", question: second_question)
Proposal.create!(content: "Eclipse", question: second_question, correct: true)
Proposal.create!(content: "SuperNova", question: second_question)

third_question = Question.create!(content: "What is the Earth surrounded by?", game: level_four, image: "https://static.videezy.com/system/resources/previews/000/041/026/original/alb_earth1007_1080p_24fps.mp4")

Proposal.create!(content: "Atmosphere", question: third_question, correct: true)
Proposal.create!(content: "Martians", question: third_question)
Proposal.create!(content: "Water", question: third_question)
Proposal.create!(content: "Cloud", question: third_question)

fourth_question = Question.create!(content: "The Sun is more precisely?", game: level_four, image: "https://static.videezy.com/system/resources/previews/000/052/575/original/200827-LoopFireEnergySphere.mp4")

Proposal.create!(content: "Planet", question: fourth_question)
Proposal.create!(content: "Star", question: fourth_question, correct: true)
Proposal.create!(content: "Rift-in-Space", question: fourth_question)
Proposal.create!(content: "Asteroid", question: fourth_question)

fifth_question = Question.create!(content: "The largest planet in the Milky Way is?", game: level_four, image: "https://static.videezy.com/system/resources/previews/000/051/545/original/Nebula_Background_6.mp4")

Proposal.create!(content: "Vegeta", question: fifth_question)
Proposal.create!(content: "Saturn", question: fifth_question)
Proposal.create!(content: "Pluto", question: fifth_question)
Proposal.create!(content: "Jupiter", question: fifth_question, correct: true)

level_five = Game.create!(title: "level 5", content: "Let's go!")

first_question = Question.create!(content: "How many planets does the Milky Way have?", game: level_five, image: "https://static.videezy.com/system/resources/previews/000/036/766/original/earth_stock2.mp4")

Proposal.create!(content: "7", question: first_question)
Proposal.create!(content: "6", question: first_question)
Proposal.create!(content: "8", question: first_question, correct: true)
Proposal.create!(content: "12", question: first_question)

second_question = Question.create!(content: "A black hole forms as a result of:", game: level_five, image: "https://static.videezy.com/system/resources/previews/000/046/828/original/geometric.mp4")

Proposal.create!(content: "Asteroid", question: second_question)
Proposal.create!(content: "Explosion-Star", question: second_question, correct: true)
Proposal.create!(content: "Rift-Space", question: second_question)
Proposal.create!(content: "Another-Dimension", question: second_question)

third_question = Question.create!(content: "What are the planets called?", game: level_five, image: "https://static.videezy.com/system/resources/previews/000/049/044/original/Jupiter-and-Saturn-on-the-night-sky-and-light-orange-cloud-moving-pass.mp4")

Proposal.create!(content: "Neptun", question: third_question)
Proposal.create!(content: "Mars", question: third_question)
Proposal.create!(content: "Saturn", question: third_question, correct: true)
Proposal.create!(content: "Jupiter", question: third_question, correct: true)

fourth_question = Question.create!(content: "Dad, can you tell me which planet is not terrestrial?", game: level_five,
                                   image: "https://static.videezy.com/system/resources/previews/000/053/043/original/22649_Planets_on_the_galaxy_HD_BG.mp4")

Proposal.create!(content: "Mercure", question: fourth_question)
Proposal.create!(content: "Uranus", question: fourth_question, correct: true)
Proposal.create!(content: "Mars", question: fourth_question)
Proposal.create!(content: "Telluric?", question: fourth_question)

fifth_question = Question.create!(content: "This one is easier! The 4 giant planets (Jupiter, Saturn, Neptune, Uranus) are also called .",
                                  game: level_five,
                                  image: "https://static.videezy.com/system/resources/previews/000/021/975/original/beautiful-hd-jupiter-planet-background.mp4")

Proposal.create!(content: "Gaseous planets", question: fifth_question, correct: true)
Proposal.create!(content: "Rocky planets", question: fifth_question)
Proposal.create!(content: "Aqueous planets", question: fifth_question)
Proposal.create!(content: "Research planets", question: fifth_question)

sixth_question = Question.create!(content: "The asteroid belt, do you know where it is?", game: level_five, image: "https://static.videezy.com/system/resources/previews/000/046/606/original/light_flying.mp4")

Proposal.create!(content: "Between Venus and Earth", question: sixth_question)
Proposal.create!(content: "Between Mars and Jupiter", question: sixth_question, correct: true)
Proposal.create!(content: "Between Orion and Neptune", question: sixth_question)
Proposal.create!(content: "Between Saturn and Uranus", question: sixth_question)

2.times do
  User.create!(firstname: Faker::Name.first_name, lastname: Faker::Name.last_name,
               email: Faker::Internet.email, password: "password",
               nickname: Faker::Name.middle_name)
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
