# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

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
second_user = User.create!(
  email: "banane@banane.com",
  password: "banana",
  username: "Bana"
)
puts "Second user added."

puts "Adding third user..."
third_user = User.create!(
  email: "vanille@vanille.com",
  password: "vanilla",
  username: "Vana"
)
puts "Third user added."

puts "Adding nine test games..."
game1 = Game.create!(
  name: "The Legend of Zelda: Breath of the Wild",
  category: "Adventure",
  condition: "Excellent",
  platform: "Nintendo Switch",
  user: first_user
)
game1_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/wiiu_14/SI_WiiU_TheLegendOfZeldaBreathOfTheWild_image1600w.jpg"
game1_photo_file_a = URI.open(game1_photo_url_a)
game1.photos.attach(io: game1_photo_file_a, filename: "The Legend of Zelda Breath of the Wild A")
game1_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_TheLegendOfZeldaBreathOfTheWild_PEGI.jpg"
game1_photo_file_b = URI.open(game1_photo_url_b)
game1.photos.attach(io: game1_photo_file_b, filename: "The Legend of Zelda Breath of the Wild B")

game2 = Game.create!(
  name: "Super Mario Odyssey",
  category: "Platformer",
  condition: "Good",
  platform: "Nintendo Switch",
  user: second_user
)
game2_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_SuperMarioOdyssey_image1600w.jpg"
game2_photo_file_a = URI.open(game2_photo_url_a)
game2.photos.attach(io: game2_photo_file_a, filename: "Super Mario Odyssey A")
game2_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_SuperMarioOdyssey_PEGI.jpg"
game2_photo_file_b = URI.open(game2_photo_url_b)
game2.photos.attach(io: game2_photo_file_b, filename: "Super Mario Odyssey B")

game3 = Game.create!(
  name: "Xenoblade Chronicles 2",
  category: "Role-Playing",
  condition: "Acceptable",
  platform: "Nintendo Switch",
  user: third_user
)
game3_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_XenobladeChronicles2_image1600w.jpg"
game3_photo_file_a = URI.open(game3_photo_url_a)
game3.photos.attach(io: game3_photo_file_a, filename: "Xenoblade Chronicles 2 A")
game3_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_XenobladeChronicles2_PEGI.jpg"
game3_photo_file_b = URI.open(game3_photo_url_b)
game3.photos.attach(io: game3_photo_file_b, filename: "Xenoblade Chronicles 2 B")

game4 = Game.create!(
  name: "Super Smash Bros. Ultimate",
  category: "Fighting",
  condition: "Excellent",
  platform: "Nintendo Switch",
  user: first_user
)
game4_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_SuperSmashBrosUltimate_02_image1600w.jpg"
game4_photo_file_a = URI.open(game4_photo_url_a)
game4.photos.attach(io: game4_photo_file_a, filename: "Super Smash Bros. Ultimate A")
game4_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_SuperSmashBrosUltimate_enGB.jpg"
game4_photo_file_b = URI.open(game4_photo_url_b)
game4.photos.attach(io: game4_photo_file_b, filename: "Super Smash Bros. Ultimate B")

game5 = Game.create!(
  name: "Mario Kart 8 Deluxe",
  category: "Racing",
  condition: "Good",
  platform: "Nintendo Switch",
  user: second_user
)
game5_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_MarioKart8Deluxe_image1600w.jpg"
game5_photo_file_a = URI.open(game5_photo_url_a)
game5.photos.attach(io: game5_photo_file_a, filename: "Mario Kart 8 Deluxe A")
game5_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_MarioKart8Deluxe_PEGI.jpg"
game5_photo_file_b = URI.open(game5_photo_url_b)
game5.photos.attach(io: game5_photo_file_b, filename: "Mario Kart 8 Deluxe B")

game6 = Game.create!(
  name: "Astral Chain",
  category: "Action",
  condition: "Acceptable",
  platform: "Nintendo Switch",
  user: third_user
)
game6_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_AstralChain_image1600w.jpg"
game6_photo_file_a = URI.open(game6_photo_url_a)
game6.photos.attach(io: game6_photo_file_a, filename: "Astral Chain A")
game6_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_AstralChain_PEGI.jpg"
game6_photo_file_b = URI.open(game6_photo_url_b)
game6.photos.attach(io: game6_photo_file_b, filename: "Astral Chain B")

game7 = Game.create!(
  name: "Fire Emblem: Three Houses",
  category: "Strategy",
  condition: "Excellent",
  platform: "Nintendo Switch",
  user: first_user
)
game7_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_FireEmblemThreeHouses_image1600w.jpg"
game7_photo_file_a = URI.open(game7_photo_url_a)
game7.photos.attach(io: game7_photo_file_a, filename: "Fire Emblem Three Houses A")
game7_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_FireEmblemThreeHouses_PEGI.jpg"
game7_photo_file_b = URI.open(game7_photo_url_b)
game7.photos.attach(io: game7_photo_file_b, filename: "Fire Emblem Three Houses B")

game8 = Game.create!(
  name: "Donkey Kong Country: Tropical Freeze",
  category: "Platformer",
  condition: "Good",
  platform: "Nintendo Switch",
  user: second_user
)
game8_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_DonkeyKongCountryTropicalFreeze_image1600w.jpg"
game8_photo_file_a = URI.open(game8_photo_url_a)
game8.photos.attach(io: game8_photo_file_a, filename: "Donkey Kong Country Tropical Freeze A")
game8_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_DonkeyKongTropicalFreeze_UKV.jpg"
game8_photo_file_b = URI.open(game8_photo_url_b)
game8.photos.attach(io: game8_photo_file_b, filename: "Donkey Kong Country Tropical Freeze B")

game9 = Game.create!(
  name: "Yoshi's Crafted World",
  category: "Role-Playing",
  condition: "Acceptable",
  platform: "Nintendo Switch",
  user: third_user
)
game9_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_YoshisCraftedWorld_image1600w.jpg"
game9_photo_file_a = URI.open(game9_photo_url_a)
game9.photos.attach(io: game9_photo_file_a, filename: "Yoshi's Crafted World A")
game9_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_YoshisCraftedWorld_PEGI.jpg"
game9_photo_file_b = URI.open(game9_photo_url_b)
game9.photos.attach(io: game9_photo_file_b, filename: "Yoshi's Crafted World B")
puts "Nine test games added."


puts "Seeding complete. (For sure now.)"
