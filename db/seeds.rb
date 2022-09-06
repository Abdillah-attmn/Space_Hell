# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require 'open-uri'
Answer.destroy_all
Proposal.destroy_all
Question.destroy_all
Score.destroy_all
Game.destroy_all
Message.destroy_all
Chatroom.destroy_all
User.destroy_all


file_images = ["https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Earth_Western_Hemisphere_transparent_background.png/1200px-Earth_Western_Hemisphere_transparent_background.png?20150429101758",
               "https://upload.wikimedia.org/wikipedia/commons/2/27/Mars_transparent.png",
               "http://wiki.bacterialtakeover.com/images/4/41/Mercury.png",
               "https://upload.wikimedia.org/wikipedia/commons/7/70/Lava_planet.png",
               "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Saturn-148300.svg/1280px-Saturn-148300.svg.png"]

# Create Chatroom
Chatroom.create!(name: "The Great Chat")

# Create game n°1
level_one = Game.new(title: "level 1", content: "Let's go!")
file = URI.open(file_images[0])
level_one.photo_game.attach(io: file, filename: "earth.png", content_type: "image/png")
level_one.save!

first_question = Question.create!(content: "Which is the closest planet in the earth?", game: level_one,
                                  image: "https://static.videezy.com/system/resources/previews/000/005/499/original/Earth_Spin_In_Hands.mp4")

Proposal.create!(content: "Mercury", question: first_question)
Proposal.create!(content: "Venus", question: first_question, correct: true)
Proposal.create!(content: "Mars", question: first_question)
Proposal.create!(content: "Moon", question: first_question)

second_question = Question.create!(content: "Which is the farest planet of solar system?", game: level_one,
                                   image: "https://static.videezy.com/system/resources/previews/000/039/000/original/alb_space2006_1080p.mp4")

Proposal.create!(content: "Pluto", question: second_question)
Proposal.create!(content: "Saturn", question: second_question)
Proposal.create!(content: "Uranus", question: second_question)
Proposal.create!(content: "Neptune", question: second_question, correct: true)


# Game n°2
level_two = Game.new(title: "level 2", content: "Let's go!")
file = URI.open(file_images[1])
level_two.photo_game.attach(io: file, filename: "earth.png", content_type: "image/png")
level_two.save!

first_question = Question.create!(content: "Which is the largest planet in the solar system?", game: level_two,
                                  image: "https://static.videezy.com/system/resources/previews/000/053/043/original/22649_Planets_on_the_galaxy_HD_BG.mp4")

Proposal.create!(content: "Jupiter", question: first_question, correct: true)
Proposal.create!(content: "Earth", question: first_question)
Proposal.create!(content: "Saturn", question: first_question)
Proposal.create!(content: "Moon", question: first_question)

second_question = Question.create!(content: "What is the name of the European rocket?", game: level_two,
                                   image: "https://static.videezy.com/system/resources/previews/000/037/624/original/cohete_fondo_espacio.mp4")

Proposal.create!(content: "Ariane", question: second_question, correct: true)
Proposal.create!(content: "Apollo", question: second_question)
Proposal.create!(content: "Travel", question: second_question)
Proposal.create!(content: "Nautilus", question: second_question)

third_question = Question.create!(content: "Besides the Moon, which is the closest planet to Earth?", game: level_two,
                                  image: "https://static.videezy.com/system/resources/previews/000/038/506/original/alb_earth1005_1080p_24fps.mp4")

Proposal.create!(content: "Venus", question: third_question, correct: true)
Proposal.create!(content: "Saturn", question: third_question)
Proposal.create!(content: "Mercury", question: third_question)
Proposal.create!(content: "Uranus", question: third_question)



# Game n°3
level_three = Game.new(title: "level 3", content: "Let's go!")
file = URI.open(file_images[2])
level_three.photo_game.attach(io: file, filename: "mercury.png", content_type: "image/png")
level_three.save!

first_question = Question.create!(content: "Who is the first man to walk on the moon?", game: level_three,
                                  image: "https://static.videezy.com/system/resources/previews/000/037/097/original/4k-blades_of-grass-big-moon-on-night-sky-background.mp4")

Proposal.create!(content: "Yuri Gagarin", question: first_question)
Proposal.create!(content: "Buzz Aldrin", question: first_question)
Proposal.create!(content: "Neil Armstrong", question: first_question, correct: true)
Proposal.create!(content: "Moon light", question: first_question)

second_question = Question.create!(content: "What is the closest star to Earth?", game: level_three,
                                   image: "https://static.videezy.com/system/resources/previews/000/047/286/original/stockvideo_05771k.mp4")

Proposal.create!(content: "The Sun", question: second_question, correct: true)
Proposal.create!(content: "The moon", question: second_question)
Proposal.create!(content: "Alpha Centauri", question: second_question)
Proposal.create!(content: "Big dog", question: second_question)

third_question = Question.create!(content: "What is the name of the gigantic explosion with which the universe began?", game: level_three,
                                  image: "https://static.videezy.com/system/resources/previews/000/051/938/original/2017_06_16-Particle-Explode1.mp4")

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


# Game n°4
level_four = Game.create!(title: "level 4", content: "Let's go!")
file = URI.open(file_images[3])
level_four.photo_game.attach(io: file, filename: "lava_planet.png", content_type: "image/png")
level_four.save!

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


# Game n°5
level_five = Game.create!(title: "level 5", content: "Let's go!")
file = URI.open(file_images[4])
level_five.photo_game.attach(io: file, filename: "Saturn.png", content_type: "image/png")
level_five.save!

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

sixth_question = Question.create!(content: "The asteroid belt, do you know where it is?", game: level_five,
                                  image: "https://static.videezy.com/system/resources/previews/000/046/606/original/light_flying.mp4")

Proposal.create!(content: "Between Venus and Earth", question: sixth_question)
Proposal.create!(content: "Between Mars and Jupiter", question: sixth_question, correct: true)
Proposal.create!(content: "Between Orion and Neptune", question: sixth_question)
Proposal.create!(content: "Between Saturn and Uranus", question: sixth_question)

2.times do
  User.create!(firstname: Faker::Name.first_name, lastname: Faker::Name.last_name,
               email: Faker::Internet.email, password: "password",
               nickname: Faker::Name.middle_name)
end
