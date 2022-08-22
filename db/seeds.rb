# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning up database..."
Game.destroy_all
User.destroy_all
puts "Database cleaned."

puts "Adding first user..."
first_user = User.create!(
  email: "chocolat@chocolat.com",
  password: "chocolate",
  username: "Choco"
)
puts "First user added."

puts "Adding second user..."
User.create!(
  email: "banane@banane.com",
  password: "banana",
  username: "Bana"
)
puts "Second user added."

puts "Adding three test games..."
Game.create!(
  name: "The Legend of Zelda: Breath of the Wild",
  category: "Adventure",
  condition: "Excellent",
  platform: "Nintendo Switch",
  user: first_user
)
Game.create!(
  name: "Super Mario Odyssey",
  category: "Platformer",
  condition: "Good",
  platform: "Nintendo Switch",
  user: first_user
)
Game.create!(
  name: "1-2-Switch",
  category: "Party",
  condition: "Acceptable",
  platform: "Nintendo Switch",
  user: first_user
)
puts "Three test games added."

puts "Seeding complete. (For sure now.)"
