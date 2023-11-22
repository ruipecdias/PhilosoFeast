Dinner.destroy_all
Philosopher.destroy_all
User.destroy_all

# the lines below creates 10 users ( 5 with a philosopher profile and 5 without a philosopher profile)
philosopher_users = []
5.times do
  philosopher_users << User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    philosopher: true,
    username: Faker::Internet.username,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/a/ae/Aristotle_Altemps_Inv8575.jpg",
    credit_card: Faker::Finance.credit_card
  )
end

Philosopher.create!(
  age: 2000,
  location: "greece",
  availability: "always",
  bio: "I am a philosopher",
  price_per_hour: 100,
  preferred_topic: "life",
  philosophical_focus: "life",
  dress_code: "casual",
  language: "english",
  communication_style: "casual",
  user: philosopher_users[0]
)

Philosopher.create!(
  age: 2000, location: "russia",
  availability: "always",
  bio: "I am a philosopher",
  price_per_hour: 100,
  preferred_topic: "life",
  philosophical_focus: "life",
  dress_code: "casual",
  language: "english",
  communication_style: "casual",
  user: philosopher_users[1]
)

Philosopher.create!(
  age: 2000,
  location: "italy",
  availability: "always",
  bio: "I am a philosopher",
  price_per_hour: 100,
  preferred_topic: "life",
  philosophical_focus: "life",
  dress_code: "casual",
  language: "english",
  communication_style: "casual",
  user: philosopher_users[2]
)

Philosopher.create!(
  age: 2000,
  location: "china",
  availability: "always",
  bio: "I am a philosopher",
  price_per_hour: 100,
  preferred_topic: "life",
  philosophical_focus: "life",
  dress_code: "casual",
  language: "english",
  communication_style: "casual",
  user: philosopher_users[3]
)

Philosopher.create!(
  age: 2000,
  location: "india",
  availability: "always",
  bio: "I am a philosopher",
  price_per_hour: 100,
  preferred_topic: "life",
  philosophical_focus: "life",
  dress_code: "casual",
  language: "english",
  communication_style: "casual",
  user: philosopher_users[4]
)

users = []

5.times do
  users << User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    philosopher: false, username: Faker::Internet.username,
    image_url:"https://upload.wikimedia.org/wikipedia/commons/a/ae/Aristotle_Altemps_Inv8575.jpg",
    credit_card: Faker::Finance.credit_card
  )
end

Dinner.create!(
  philosopher: philosopher_users[0].philosophers.first,
  user: users[0],
  lenght: 1,
  status: 1,
  date: "2021-11-21 15:45:57"
)

Dinner.create!(
  philosopher: philosopher_users[1].philosophers.first,
  user: users[1],
  lenght: 1,
  status: 1,
  date: "2021-11-21 15:45:57"
)

Dinner.create!(
  philosopher: philosopher_users[2].philosophers.first,
  user: users[2],
  lenght: 1,
  status: 1,
  date: "2021-11-21 15:45:57"
)

Dinner.create!(
  philosopher: philosopher_users[3].philosophers.first,
  user: users[3],
  lenght: 1,
  status: 1,
  date: "2021-11-21 15:45:57"
)

Dinner.create!(
  philosopher: philosopher_users[4].philosophers.first,
  user: users[4],
  lenght: 1,
  status: 1,
  date: "2021-11-21 15:45:57"
)
