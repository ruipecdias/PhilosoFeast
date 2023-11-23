Dinner.destroy_all
Philosopher.destroy_all
User.destroy_all

# the lines below creates 10 users ( 5 with a philosopher profile and 5 without a philosopher profile)
philosopher_users = []
philo_names = ['Aristotle',
              'Confucius',
              'Dante Alighieri',
              'René Descartes',
              'Epicurus',
              'Hannah Arendt',
              'Hegel',
              'Immanuel Kant',
              'Lao Tsé',
              'John Locke',
              'Niccolò Machiavelli',
              'Karl Marx',
              'Friedrich Nietzsche',
              'Fernando Pessoa',
              'Plato',
              'Pythagoras',
              'Simone de Beauvoir',
              'Socrates',
              'Spinoza',
              'Voltaire']
i = 0
20.times do
  philosopher_users << User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    philosopher: true,
    username: philo_names[0 + i],
    image_url: "https://upload.wikimedia.org/wikipedia/commons/a/ae/Aristotle_Altemps_Inv8575.jpg"
  )
  i += 1
end

Philosopher.create!(
  age: 2384,
  location: "Av. António Augusto de Aguiar 24A, 1050-010 Lisboa",
  availability: "6 pm - 10 pm",
  bio: "Aristotle, the master of all trades, philosopher, scientist, and tutor to Alexander the
  Great. I ponder the essence of life with a touch of logic and a dash of empiricism.",
  price_per_hour: 100,
  preferred_topic: "Ethics and Politics",
  philosophical_focus: "Virtue Ethics",
  dress_code: "Classical Greek attire",
  nationality: "Greek",
  communication_style: "Methodical and logical",
  user: philosopher_users[0]
)

Philosopher.create!(
  age: 2570,
  location: "R. Alexandre Herculano 7C, 1500-005 Lisboa",
  availability: "5 pm - 9 pm",
  bio: "Confucius, the wise teacher, spreading wisdom and harmony. Join me on the path
  of virtue, and let's explore the beauty of life together.",
  price_per_hour: 80,
  preferred_topic: "Moral and Ethical Development",
  philosophical_focus: "Confucianism",
  dress_code: "Traditional Chinese attire",
  nationality: "Chinese",
  communication_style: "Reflective and insightful",
  user: philosopher_users[1]
)

Philosopher.create!(
  age: 756,
  location: "Av. Fontes Pereira de Melo 31, 1050-117 Lisboa",
  availability: "7 pm - 11 pm",
  bio: "Dante, the poet of the divine comedy, wandering between realms. Embark on an
  allegorical journey with me through the circles of existence.",
  price_per_hour: 120,
  preferred_topic: "Divine Comedy and Human Morality",
  philosophical_focus: "Christian Humanism",
  dress_code: "Renaissance attire, possibly with a laurel crown",
  nationality: "Italian",
  communication_style: "Poetic and metaphorical",
  user: philosopher_users[2]
)

Philosopher.create!(
  age: 425,
  location: "R. Gomes Freire 60, 1150-175 Lisboa",
  availability: "6 pm - 10 pm",
  bio: "Descartes, the father of modern philosophy, doubting to find certainty. Join me in
  the quest for indubitable truths and the exploration of the mind.",
  price_per_hour: 150,
  preferred_topic: "Epistemology and Metaphysics",
  philosophical_focus: "Cartesian Dualism",
  dress_code: "17th-century European attire",
  nationality: "French",
  communication_style: "Analytical and systematic",
  user: philosopher_users[3]
)

Philosopher.create!(
  age: 2342,
  location: "Av. da República 14, 1050-191 Lisboa",
  availability: "7 pm - 9 pm",
  bio: "Epicurus, the philosopher of pleasure, seeking tranquility in simplicity. Let's discuss
  the pursuit of happiness and the avoidance of unnecessary desires.",
  price_per_hour: 90,
  preferred_topic: "Hedonism and Ethics",
  philosophical_focus: "Epicureanism",
  dress_code: "Simple and casual",
  nationality: "Greek",
  communication_style: "Friendly and laid-back",
  user: philosopher_users[4]
)

Philosopher.create!(
  age: 116,
  location: "Av. da República 25A, 1050-186 Lisboa",
  availability: "6 pm - 10 pm",
  bio: "Hannah Arendt, the political theorist, navigating the complexities of human
  existence. Join me in exploring the nature of power, authority, and the essence of
  poli=cal life.",
  price_per_hour: 180,
  preferred_topic: "Political Philosophy and Existentialism",
  philosophical_focus: "The Human Condition",
  dress_code: "Smart casual",
  nationality: "German",
  communication_style: "Thought-provoking and engaging",
  user: philosopher_users[5]
)

Philosopher.create!(
  age: 250,
  location: "Av. Duque de Ávila 11-13, 1000-138 Lisboa",
  availability: "5 pm - 9 pm",
  bio: "Hegel, the dialectician, unraveling the intricacies of history and thought. Embark on
  a philosophical journey through the evolution of ideas and the absolute spirit.",
  price_per_hour: 160,
  preferred_topic: "Dialectical Idealism",
  philosophical_focus: "Absolute Idealism",
  dress_code: "19th-century academic attire",
  nationality: "German",
  communication_style: "Systematic and comprehensive",
  user: philosopher_users[6]
)

Philosopher.create!(
  age: 292,
  location: "R. São José 168, 1150-326 Lisboa",
  availability: "7 pm - 11 pm",
  bio: "Immanuel Kant, the philosopher of reason and duty, exploring the foundations of
  morality. Join me in the examination of the categorical imperative and the nature of
  human autonomy.",
  price_per_hour: 170,
  preferred_topic: "Ethics and Metaphysics",
  philosophical_focus: "Transcendental Idealism",
  dress_code: "Enlightenment-era attire",
  nationality: "German",
  communication_style: "Analytical and precise",
  user: philosopher_users[7]
)

Philosopher.create!(
  age: 2604,
  location: "R. Luciano Cordeiro 65, 1150-341 Lisboa",
  availability: "6 pm - 10 pm",
  bio: "Lao Tse, the ancient sage, delving into the wisdom of Taoism. Join me in exploring
  the natural way of life and the harmony of the Tao.",
  price_per_hour: 100,
  preferred_topic: "Taoism and Dao De Jing",
  philosophical_focus: "Taoism",
  dress_code: "Traditional Chinese robe",
  nationality: "Chinese",
  communication_style: "Poe=c and contemplative",
  user: philosopher_users[8]
)

Philosopher.create!(
  age: 370,
  location: "Av. Alm. Reis 1 H, 1150-007 Lisbo",
  availability: "7 pm - 9 pm",
  bio: "John Locke, the empiricist philosopher, championing individual rights and the social
  contract. Join me in exploring the founda=ons of liberalism and the limits of government
  power.",
  price_per_hour: 150,
  preferred_topic: "Political Philosophy and Empiricism",
  philosophical_focus: "Liberalism",
  dress_code: "17th-century English attire",
  nationality: "British",
  communication_style: "Clear and pragmatic",
  user: philosopher_users[9]
)

Philosopher.create!(
  age: 553,
  location: "Largo da Academia Nacional de Belas Artes 19, 1200-289 Lisboa",
  availability: "7 pm - 9 pm",
  bio: "Niccolò Machiavelli, the pragmatic political thinker, navigating the intricacies of
  power. Join me in exploring the art of statecrak and the realities of political leadership.",
  price_per_hour: 130,
  preferred_topic: "Political Realism and Power",
  philosophical_focus: "Machiavellianism",
  dress_code: "Renaissance attire with a touch of cunning",
  nationality: "Italian",
  communication_style: "Strategic and insightful",
  user: philosopher_users[10]
)


Philosopher.create!(
  age: 204,
  location: "Av. Dom Carlos I 17-25, 1200-000 Lisboa",
  availability: "6 pm - 10 pm",
  bio: "Karl Marx, the revolutionary thinker, unraveling the dynamics of capitalism and
  class struggle. Join me in exploring the path to a classless society and the critique of
  political economy.",
  price_per_hour: 5,
  preferred_topic: "Marxism and Socialism",
  philosophical_focus: "Historical Materialism",
  dress_code: "19th-century working-class attire",
  nationality: "German",
  communication_style: "Revolutionary and critical",
  user: philosopher_users[11]
)

Philosopher.create!(
  age: 178,
  location: "R. Alexandre Herculano 7C, 1500-005 Lisboa",
  availability: "5 pm - 9 pm",
  bio: "Friedrich Nietzsche, the philosopher of the will to power, challenging conventional
  morality. Join me in exploring the eternal recurrence and the concept of the
  Übermensch.",
  price_per_hour: 230,
  preferred_topic: "Existentialism and Beyond Good and Evil",
  philosophical_focus: "Will to Power",
  dress_code: "19th-century intellectual attire",
  nationality: "German",
  communication_style: "Reflective and insightful",
  user: philosopher_users[12]
)

Philosopher.create!(
  age: 134,
  location: "R. Garrett 122, 1200-205 Lisboa",
  availability: "7 pm - 11 pm",
  bio: "Fernando Pessoa, the poet-philosopher with mul=ple literary personas. Join me in a
  journey through the labyrinth of existence and the explora=on of the self.",
  price_per_hour: 120,
  preferred_topic: "Existentialism and Modernist Literature",
  philosophical_focus: "Heteronymic Literary Theory",
  dress_code: "Bohemian attire",
  nationality: "Portuguese",
  communication_style: "Poetic and introspective",
  user: philosopher_users[13]
)

Philosopher.create!(
  age: 2427,
  location: "R. Tomás Ribeiro 95B, 1050-227 Lisboa",
  availability: "6 pm - 10 pm",
  bio: "Plato, the philosopher of forms, engaging in dialectical dialogues. Join me in the
  pursuit of truth, justice, and the exploration of the ideal state.",
  price_per_hour: 170,
  preferred_topic: "Metaphysics and Epistemology",
  philosophical_focus: "Theory of Forms",
  dress_code: "Classical Greek attire",
  nationality: "French",
  communication_style: "Socratic dialogue and inquiry",
  user: philosopher_users[14]
)

Philosopher.create!(
  age: 2571,
  location: "Rua da Ilha de Sao Tomé 10A B, 1170-185 Lisboa",
  availability: "7 pm - 9 pm",
  bio: "Pythagoras, the mathematician-philosopher, exploring the mystical side of
  numbers. Join me in the quest for the harmony of the cosmos and the secrets of the
  mathematical universe.",
  price_per_hour: 150,
  preferred_topic: "Mathematics and Metaphysics",
  philosophical_focus: "Pythagoreanism",
  dress_code: "Ancient Greek philosopher attire",
  nationality: "Greek",
  communication_style: "Logical and contemplative",
  user: philosopher_users[15]
)

Philosopher.create!(
  age: 114,
  location: "R. Cavaleiro de Oliveira 42, 1170-088 Lisboa",
  availability: "6 pm - 10 pm",
  bio: "Simone de Beauvoir, the existentialist feminist, challenging the status quo. Join me
  in exploring existential freedom, feminist philosophy, and the ethics of ambiguity.",
  price_per_hour: 180,
  preferred_topic: "Existentialism and Feminism",
  philosophical_focus: "The Second Sex",
  dress_code: "20th-century Parisian chic",
  nationality: "French",
  communication_style: "Thought-provoking and assertive",
  user: philosopher_users[16]
)

Philosopher.create!(
  age: 2469,
  location: "Calçada Poço dos Mouros 28, 1170-318 Lisboa",
  availability: "5 pm - 9 pm",
  bio: "Socrates, the father of Western philosophy, questioning everything. Join me in the
  pursuit of wisdom through dialogue and the examination of life's fundamental
  questions.",
  price_per_hour: 150,
  preferred_topic: "Ethics and Epistemology",
  philosophical_focus: "Socratic Method",
  dress_code: "Classical Greek attire",
  nationality: "Greek",
  communication_style: "Socratic questioning and dialogue",
  user: philosopher_users[17]
)

Philosopher.create!(
  age: 388,
  location: "R. Marquês Sá da Bandeira 76, 1050-150 Lisboa",
  availability: "7 pm - 11 pm",
  bio: "Immanuel Kant, the philosopher of reason and duty, exploring the foundations of
  morality. Join me in the examination of the categorical imperative and the nature of
  human autonomy.",
  price_per_hour: 160,
  preferred_topic: "Ethics and Metaphysics",
  philosophical_focus: "Ethics and Metaphysics",
  dress_code: "17th-century Dutch attire",
  nationality: "Dutch",
  communication_style: "Rational and systematic",
  user: philosopher_users[18]
)

Philosopher.create!(
  age: 328,
  location: "Av. Marquês de Tomar 44 b 1050-053, 1050-156 Lisboa",
  availability: "6 pm - 10 pm",
  bio: "Voltaire, the Enlightenment thinker, championing reason, tolerance, and satire. Join
  me in the pursuit of intellectual freedom, critical thinking, and the battle against
  superstition.",
  price_per_hour: 140,
  preferred_topic: "Enlightenment Philosophy and Sa=re",
  philosophical_focus: "Candide",
  dress_code: "18th-century Enlightenment attire",
  nationality: "French",
  communication_style: "Witty and satirical",
  user: philosopher_users[19]
)

users = []

5.times do
  users << User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    philosopher: false, username: Faker::Internet.username,
    image_url:"https://upload.wikimedia.org/wikipedia/commons/a/ae/Aristotle_Altemps_Inv8575.jpg"
  )
end

Dinner.create!(
  philosopher: philosopher_users[0].philosophers.first,
  user: users[0],
  length: 1,
  status: 1,
  date: "2021-11-21 15:45:57",
  credit_card: Faker::Finance.credit_card
)

Dinner.create!(
  philosopher: philosopher_users[1].philosophers.first,
  user: users[1],
  length: 1,
  status: 1,
  date: "2021-11-21 15:45:57",
  credit_card: Faker::Finance.credit_card
)

Dinner.create!(
  philosopher: philosopher_users[2].philosophers.first,
  user: users[2],
  length: 1,
  status: 1,
  date: "2021-11-21 15:45:57",
  credit_card: Faker::Finance.credit_card
)

Dinner.create!(
  philosopher: philosopher_users[3].philosophers.first,
  user: users[3],
  length: 1,
  status: 1,
  date: "2021-11-21 15:45:57",
  credit_card: Faker::Finance.credit_card
)

Dinner.create!(
  philosopher: philosopher_users[4].philosophers.first,
  user: users[4],
  length: 1,
  status: 1,
  date: "2021-11-21 15:45:57",
  credit_card: Faker::Finance.credit_card
)
