# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Philosopher.create!(age: 2000, location: "greece", availability: "always", bio: "I am a philosopher", price_per_hour: 100, preferred_topic: "life", philosophical_focus: "life", dress_code: "casual", language: "english", communication_style: "casual", user_id: 1)
Philosopher.create!(age: 2000, location: "russia", availability: "always", bio: "I am a philosopher", price_per_hour: 100, preferred_topic: "life", philosophical_focus: "life", dress_code: "casual", language: "english", communication_style: "casual", user_id: 2)
Philosopher.create!(age: 2000, location: "italy", availability: "always", bio: "I am a philosopher", price_per_hour: 100, preferred_topic: "life", philosophical_focus: "life", dress_code: "casual", language: "english", communication_style: "casual", user_id: 3)
Philosopher.create!(age: 2000, location: "china", availability: "always", bio: "I am a philosopher", price_per_hour: 100, preferred_topic: "life", philosophical_focus: "life", dress_code: "casual", language: "english", communication_style: "casual", user_id: 4)
Philosopher.create!(age: 2000, location: "india", availability: "always", bio: "I am a philosopher", price_per_hour: 100, preferred_topic: "life", philosophical_focus: "life", dress_code: "casual", language: "english", communication_style: "casual", user_id: 5)

Dinner.create!(philosopher_id: 1, user_id: 6, lenght: 1, status: 1, date: "2021-11-21 15:45:57")
Dinner.create!(philosopher_id: 2, user_id: 7, lenght: 1, status: 1, date: "2021-11-21 15:45:57")
Dinner.create!(philosopher_id: 3, user_id: 8, lenght: 1, status: 1, date: "2021-11-21 15:45:57")
Dinner.create!(philosopher_id: 4, user_id: 9, lenght: 1, status: 1, date: "2021-11-21 15:45:57")
Dinner.create!(philosopher_id: 5, user_id: 10, lenght: 1, status: 1, date: "2021-11-21 15:45:57")

# the lines below creates 10 users ( 5 with a philosopher profile and 5 without a philosopher profile)
5.times do |i|
  User.create!(email: Faker::Internet.email, password: Faker::Internet.password, philosopher: true, username: Faker::Internet.username, image_url:"https://upload.wikimedia.org/wikipedia/commons/a/ae/Aristotle_Altemps_Inv8575.jpg", credit_card: Faker::Finance.credit_card)
end
5.times do |i|
  User.create!(email: Faker::Internet.email, password: Faker::Internet.password, philosopher: false, username: Faker::Internet.username, image_url:"https://upload.wikimedia.org/wikipedia/commons/a/ae/Aristotle_Altemps_Inv8575.jpg", credit_card: Faker::Finance.credit_card)
end

