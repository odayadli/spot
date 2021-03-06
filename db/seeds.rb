# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.new(first_name: 'Oday', last_name: 'adli', email: 'adli55@gmail.com', password: '123456', address: 'London')
user2 = User.new(first_name: 'Gillis', last_name: 'Rikka', email: 'adli97@gmail.com', password: '123456', address: 'London')
user3 = User.new(first_name: 'George', last_name: 'Daren', email: 'adli91@gmail.com', password: '123456', address: 'London')
user4 = User.new(first_name: 'Mike', last_name: 'Tyson', email: 'adli92@gmail.com', password: '123456', address: 'London')
user5 = User.new(first_name: 'Lara', last_name: 'Croft', email: 'adli89@gmail.com', password: '123456', address: 'London')
user6 = User.new(first_name: 'Sonia', last_name: 'Daren', email: 'adli67@gmail.com', password: '123456', address: 'London')
user7 = User.new(first_name: 'Maya', last_name: 'Mira', email: 'adli62@gmail.com', password: '123456', address: 'London')
category1 = Category.new(name: 'Yoga')
category2 = Category.new(name: 'Crossfit')
category3 = Category.new(name: 'Pilates')
category4 = Category.new(name: 'Boxing')
category5 = Category.new(name: 'Tennis')
category6 = Category.new(name: 'Diving')
category7 = Category.new(name: 'Horse Racing')

service = Service.new(trainer: user1, category: category1, details: 'Come and join me', price_per_hour: '15', service_address: 'France Lynch, Stroud, England, United Kingdom')
service.save!

service = Service.new(trainer: user2, category: category2, details: 'Come and join me', price_per_hour: '11', service_address: 'Lyon, Auvergne-Rhône-Alpes, France')
service.save!

service = Service.new(trainer: user3, category: category3, details: 'Come and join me', price_per_hour: '13', service_address: 'Marsett, Richmondshire, England, United Kingdom')
service.save!

service = Service.new(trainer: user4, category: category4, details: 'Come and join me', price_per_hour: '12', service_address: 'Birmingham, England, United Kingdom')
service.save!

service = Service.new(trainer: user5, category: category5, details: 'Come and join me', price_per_hour: '10', service_address: 'Manchester, England, United Kingdom')
service.save!


service = Service.new(trainer: user6, category: category6, details: 'Come and join me', price_per_hour: '20', service_address: 'Leeds, England, United Kingdom')
service.save!

service = Service.new(trainer: user7, category: category7, details: 'Come and join me', price_per_hour: '25', service_address: 'Harlow, England, United Kingdom')
service.save!
