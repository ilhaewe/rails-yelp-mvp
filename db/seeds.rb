# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "cleaning data base..."
Restaurant.destroy_all
puts "creating databse..."
Restaurant.create!(name: "Epicure", address: "75008 Paris", phone_number: "01 43 54 23 31", category: "french")
Restaurant.create!(name: "Sushi Shop", address: "75009 Paris", phone_number: "01 42 34 54 76", category: "japanese")
Restaurant.create!(name: "Pizza Hut", address: "75010 Paris", phone_number: "01 45 67 89 10", category: "italian")
Restaurant.create!(name: "Dumpling House", address: "75011 Paris", phone_number: "01 23 45 67 89", category: "chinese")
Restaurant.create!(name: "Friterie Belge", address: "75012 Paris", phone_number: "01 98 76 54 32", category: "belgian")

puts "Seed completed"
