# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Sport.create(name: "Softball", min_players: 9, max_players: 15)
Sport.create(name: "Basketball", min_players: 5, max_players: 12)
Sport.create(name: "Football", min_players: 8, max_players: 14)
Sport.create(name: "Ultimate Frisbee", min_players: 8, max_players: 15)


10.times {
  Player.create(
    email: Faker::Internet.free_email,
    first_name: Faker::Name.first_name,
    last_name: Faker::GameOfThrones.house,
    password_digest: "123"
  )
}


2.times {
  Team.create(
    name: Faker::Pokemon.name,
    mascot_url: Faker::Fillmurray.image,
    captain_id: rand(1..5),
    sport_id: 1)
}
2.times {Team.create(name: Faker::Pokemon.name, mascot_url: Faker::Fillmurray.image, captain_id: (rand(1..5)), sport_id: 2)}
2.times {Team.create(name: Faker::Pokemon.name, mascot_url: Faker::Fillmurray.image, captain_id: (rand(1..5)), sport_id: 3)}
2.times {Team.create(name: Faker::Pokemon.name, mascot_url: Faker::Fillmurray.image, captain_id: (rand(1..5)), sport_id: 4)}
