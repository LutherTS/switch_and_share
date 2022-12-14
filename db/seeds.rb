# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "Cleaning up database..."
Booking.destroy_all
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

puts "Adding eighteen test games..."
game1 = Game.new(
  name: "The Legend of Zelda: Breath of the Wild",
  category: "Adventure",
  condition: "Excellent",
  platform: "Nintendo Switch",
  user: first_user,
  price_per_week: 5
)
game1_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/wiiu_14/SI_WiiU_TheLegendOfZeldaBreathOfTheWild_image1600w.jpg"
game1_photo_file_a = URI.open(game1_photo_url_a)
game1.photos.attach(io: game1_photo_file_a, filename: "The Legend of Zelda Breath of the Wild A")
game1_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_TheLegendOfZeldaBreathOfTheWild_PEGI.jpg"
game1_photo_file_b = URI.open(game1_photo_url_b)
game1.photos.attach(io: game1_photo_file_b, filename: "The Legend of Zelda Breath of the Wild B")
game1.save!

game2 = Game.new(
  name: "Super Mario Odyssey",
  category: "Platformer",
  condition: "Good",
  platform: "Nintendo Switch",
  user: second_user,
  price_per_week: 6
)
game2_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_SuperMarioOdyssey_image1600w.jpg"
game2_photo_file_a = URI.open(game2_photo_url_a)
game2.photos.attach(io: game2_photo_file_a, filename: "Super Mario Odyssey A")
game2_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_SuperMarioOdyssey_PEGI.jpg"
game2_photo_file_b = URI.open(game2_photo_url_b)
game2.photos.attach(io: game2_photo_file_b, filename: "Super Mario Odyssey B")
game2.save!

game3 = Game.new(
  name: "Xenoblade Chronicles 2",
  category: "Role-Playing",
  condition: "Acceptable",
  platform: "Nintendo Switch",
  user: third_user,
  price_per_week: 4
)
game3_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_XenobladeChronicles2_image1600w.jpg"
game3_photo_file_a = URI.open(game3_photo_url_a)
game3.photos.attach(io: game3_photo_file_a, filename: "Xenoblade Chronicles 2 A")
game3_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_XenobladeChronicles2_PEGI.jpg"
game3_photo_file_b = URI.open(game3_photo_url_b)
game3.photos.attach(io: game3_photo_file_b, filename: "Xenoblade Chronicles 2 B")
game3.save!

game4 = Game.new(
  name: "Super Smash Bros. Ultimate",
  category: "Fighting",
  condition: "Excellent",
  platform: "Nintendo Switch",
  user: first_user,
  price_per_week: 3
)
game4_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_SuperSmashBrosUltimate_02_image1600w.jpg"
game4_photo_file_a = URI.open(game4_photo_url_a)
game4.photos.attach(io: game4_photo_file_a, filename: "Super Smash Bros. Ultimate A")
game4_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_SuperSmashBrosUltimate_enGB.jpg"
game4_photo_file_b = URI.open(game4_photo_url_b)
game4.photos.attach(io: game4_photo_file_b, filename: "Super Smash Bros. Ultimate B")
game4.save!

game5 = Game.new(
  name: "Mario Kart 8 Deluxe",
  category: "Racing",
  condition: "Good",
  platform: "Nintendo Switch",
  user: second_user,
  price_per_week: 3
)
game5_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_MarioKart8Deluxe_image1600w.jpg"
game5_photo_file_a = URI.open(game5_photo_url_a)
game5.photos.attach(io: game5_photo_file_a, filename: "Mario Kart 8 Deluxe A")
game5_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_MarioKart8Deluxe_PEGI.jpg"
game5_photo_file_b = URI.open(game5_photo_url_b)
game5.photos.attach(io: game5_photo_file_b, filename: "Mario Kart 8 Deluxe B")
game5.save!

game6 = Game.new(
  name: "Astral Chain",
  category: "Action",
  condition: "Acceptable",
  platform: "Nintendo Switch",
  user: first_user,
  price_per_week: 6
)
game6_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_AstralChain_image1600w.jpg"
game6_photo_file_a = URI.open(game6_photo_url_a)
game6.photos.attach(io: game6_photo_file_a, filename: "Astral Chain A")
game6_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_AstralChain_PEGI.jpg"
game6_photo_file_b = URI.open(game6_photo_url_b)
game6.photos.attach(io: game6_photo_file_b, filename: "Astral Chain B")
game6.save!

game7 = Game.new(
  name: "Fire Emblem: Three Houses",
  category: "Strategy",
  condition: "Excellent",
  platform: "Nintendo Switch",
  user: third_user,
  price_per_week: 5
)
game7_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_FireEmblemThreeHouses_image1600w.jpg"
game7_photo_file_a = URI.open(game7_photo_url_a)
game7.photos.attach(io: game7_photo_file_a, filename: "Fire Emblem Three Houses A")
game7_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_FireEmblemThreeHouses_PEGI.jpg"
game7_photo_file_b = URI.open(game7_photo_url_b)
game7.photos.attach(io: game7_photo_file_b, filename: "Fire Emblem Three Houses B")
game7.save!

game8 = Game.new(
  name: "Donkey Kong Country: Tropical Freeze",
  category: "Platformer",
  condition: "Good",
  platform: "Nintendo Switch",
  user: second_user,
  price_per_week: 6
)
game8_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_DonkeyKongCountryTropicalFreeze_image1600w.jpg"
game8_photo_file_a = URI.open(game8_photo_url_a)
game8.photos.attach(io: game8_photo_file_a, filename: "Donkey Kong Country Tropical Freeze A")
game8_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_DonkeyKongTropicalFreeze_UKV.jpg"
game8_photo_file_b = URI.open(game8_photo_url_b)
game8.photos.attach(io: game8_photo_file_b, filename: "Donkey Kong Country Tropical Freeze B")
game8.save!

game9 = Game.new(
  name: "Yoshi's Crafted World",
  category: "Platformer",
  condition: "Acceptable",
  platform: "Nintendo Switch",
  user: second_user,
  price_per_week: 6
)
game9_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_YoshisCraftedWorld_image1600w.jpg"
game9_photo_file_a = URI.open(game9_photo_url_a)
game9.photos.attach(io: game9_photo_file_a, filename: "Yoshi's Crafted World A")
game9_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_YoshisCraftedWorld_PEGI.jpg"
game9_photo_file_b = URI.open(game9_photo_url_b)
game9.photos.attach(io: game9_photo_file_b, filename: "Yoshi's Crafted World B")
game9.save!

game10 = Game.new(
  name: "Ys VIII: Lacrimosa of Dana",
  category: "Role-Playing",
  condition: "Excellent",
  platform: "Nintendo Switch",
  user: first_user,
  price_per_week: 5
)
game10_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_YsVlllLacrimosaOfDana_image1600w.jpg"
game10_photo_file_a = URI.open(game10_photo_url_a)
game10.photos.attach(io: game10_photo_file_a, filename: "Ys VIII Lacrimosa of Dana A")
game10_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_YsVlllLacrimosaOfDana_PEGI.jpg"
game10_photo_file_b = URI.open(game10_photo_url_b)
game10.photos.attach(io: game10_photo_file_b, filename: "Ys VIII Lacrimosa of Dana B")
game10.save!

game11 = Game.new(
  name: "Azure Striker Gunvolt: Striker Pack",
  category: "Action",
  condition: "Good",
  platform: "Nintendo Switch",
  user: second_user,
  price_per_week: 6
)
game11_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_download_software_1/H2x1_NSwitchDS_AzureStrikerGunvoltStrickerPack_image1600w.jpg"
game11_photo_file_a = URI.open(game11_photo_url_a)
game11.photos.attach(io: game11_photo_file_a, filename: "Azure Striker Gunvolt Striker Pack A")
game11_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_AzureStrikerGunvoltStrickerPack_PEGI.jpg"
game11_photo_file_b = URI.open(game11_photo_url_b)
game11.photos.attach(io: game11_photo_file_b, filename: "Azure Striker Gunvolt Striker Pack B")
game11.save!

game12 = Game.new(
  name: "Minecraft",
  category: "Adventure",
  condition: "Acceptable",
  platform: "Nintendo Switch",
  user: third_user,
  price_per_week: 4
)
game12_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_Minecraft_image1600w.jpg"
game12_photo_file_a = URI.open(game12_photo_url_a)
game12.photos.attach(io: game12_photo_file_a, filename: "Minecraft A")
game12_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_Minecraft_enGB.jpg"
game12_photo_file_b = URI.open(game12_photo_url_b)
game12.photos.attach(io: game12_photo_file_b, filename: "Minecraft B")
game12.save!

game13 = Game.new(
  name: "Street Fighter 30th Anniversary Collection",
  category: "Fighting",
  condition: "Excellent",
  platform: "Nintendo Switch",
  user: first_user,
  price_per_week: 3
)
game13_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_StreetFighter30thAnniversaryCollection_image1600w.jpg"
game13_photo_file_a = URI.open(game13_photo_url_a)
game13.photos.attach(io: game13_photo_file_a, filename: "Street Fighter 30th Anniversary Collection A")
game13_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_StreetFighter30thAnniversaryCollection_PEGI.jpg"
game13_photo_file_b = URI.open(game13_photo_url_b)
game13.photos.attach(io: game13_photo_file_b, filename: "Street Fighter 30th Anniversary Collection B")
game13.save!

game14 = Game.new(
  name: "Battle Chasers: Nightwar",
  category: "Role-Playing",
  condition: "Good",
  platform: "Nintendo Switch",
  user: second_user,
  price_per_week: 3
)
game14_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_BattleChasersNightwar_image1600w.jpg"
game14_photo_file_a = URI.open(game14_photo_url_a)
game14.photos.attach(io: game14_photo_file_a, filename: "Battle Chasers Nightwar A")
game14_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_BattleChasersNightwar_PEGI.jpg"
game14_photo_file_b = URI.open(game14_photo_url_b)
game14.photos.attach(io: game14_photo_file_b, filename: "Battle Chasers Nightwar B")
game14.save!

game15 = Game.new(
  name: "The Elder Scrolls V: Skyrim",
  category: "Role-Playing",
  condition: "Acceptable",
  platform: "Nintendo Switch",
  user: first_user,
  price_per_week: 6
)
game15_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_TheElderScrollsVSkyrim_image1600w.jpg"
game15_photo_file_a = URI.open(game15_photo_url_a)
game15.photos.attach(io: game15_photo_file_a, filename: "The Elder Scrolls V Skyrim A")
game15_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_TheElderScrollsVSkyrim_UKV.jpg"
game15_photo_file_b = URI.open(game15_photo_url_b)
game15.photos.attach(io: game15_photo_file_b, filename: "The Elder Scrolls V Skyrim B")
game15.save!

game16 = Game.new(
  name: "Mario + Rabbids Kingdom Battle",
  category: "Strategy",
  condition: "Excellent",
  platform: "Nintendo Switch",
  user: third_user,
  price_per_week: 5
)
game16_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_MarioAndRabbidsKingdomBattle_EU_image1600w.jpg"
game16_photo_file_a = URI.open(game16_photo_url_a)
game16.photos.attach(io: game16_photo_file_a, filename: "Mario + Rabbids Kingdom Battle A")
game16_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_MarioAndRabbidsKingdomBattle_PEGI.jpg"
game16_photo_file_b = URI.open(game16_photo_url_b)
game16.photos.attach(io: game16_photo_file_b, filename: "Mario + Rabbids Kingdom Battle B")
game16.save!

game17 = Game.new(
  name: "Lost Sphear",
  category: "Role-Playing",
  condition: "Good",
  platform: "Nintendo Switch",
  user: second_user,
  price_per_week: 6
)
game17_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_LostSphear_image1600w.jpg"
game17_photo_file_a = URI.open(game17_photo_url_a)
game17.photos.attach(io: game17_photo_file_a, filename: "Lost Sphear A")
game17_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_LostSphear_PEGI.jpg"
game17_photo_file_b = URI.open(game17_photo_url_b)
game17.photos.attach(io: game17_photo_file_b, filename: "Lost Sphear B")
game17.save!

game18 = Game.new(
  name: "Little Nightmares Complete Edition",
  category: "Platformer",
  condition: "Acceptable",
  platform: "Nintendo Switch",
  user: second_user,
  price_per_week: 6
)
game18_photo_url_a = "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_LittleNightmaresCompleteEdition_image1600w.jpg"
game18_photo_file_a = URI.open(game18_photo_url_a)
game18.photos.attach(io: game18_photo_file_a, filename: "Little Nightmares Complete Edition A")
game18_photo_url_b = "https://fs-prod-cdn.nintendo-europe.com/media/images/05_packshots/games_13/nintendo_switch_8/PS_NSwitch_LittleNightmaresCompleteEdition_UKV.jpg"
game18_photo_file_b = URI.open(game18_photo_url_b)
game18.photos.attach(io: game18_photo_file_b, filename: "Little Nightmares Complete Edition B")
game18.save!
puts "Eighteen test games added."


puts "Seeding complete. (For sure now.)"
