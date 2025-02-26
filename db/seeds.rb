# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all
Review.destroy_all

r1 = Restaurant.create(name: 'Nutella Club 1', address: 'Paris 11E', phone_number: '06111826', category: 'chinese')
r2 = Restaurant.create(name: 'Nutella Club 2', address: 'Paris 11E', phone_number: '06111826', category: 'chinese')
r3 = Restaurant.create(name: 'Nutella Club 3', address: 'Paris 11E', phone_number: '06111826', category: 'chinese')
r4 = Restaurant.create(name: 'Nutella Club 4', address: 'Paris 11E', phone_number: '06111826', category: 'chinese')
r5 = Restaurant.create(name: 'Nutella Club 5', address: 'Paris 11E', phone_number: '06111826', category: 'chinese')

rev1 = Review.create(rating: rand(0..5), content: 'very good', restaurant: r1)
rev2 = Review.create(rating: rand(0..5), content: 'very good', restaurant: r1)
rev3 = Review.create(rating: rand(0..5), content: 'very good', restaurant: r2)
rev4 = Review.create(rating: rand(0..5), content: 'very good', restaurant: r3)
rev5 = Review.create(rating: rand(0..5), content: 'very good', restaurant: r4)
