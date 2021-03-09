# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts 'Destroying DB'

User.destroy_all
Category.destroy_all
Service.destroy_all

puts 'Starting seed'

puts 'Seeding users'
file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614886870/image_16_dtzeqo.jpg')
user1 = User.new(first_name: 'Oday',
                 last_name: 'adli',
                 email: 'adli55@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user1.profile_pic.attach(io: file, filename: 'trainer.jpg', content_type: 'image/jpg')
user1.save!

file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614886871/image_17_ztojgm.jpg')
user2 = User.new(first_name: 'Gillis',
                 last_name: 'Rikka',
                 email: 'adli97@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user2.profile_pic.attach(io: file, filename: 'trainer2.jpg', content_type: 'image/jpg')
user2.save!

file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614886872/image_18_cssxza.jpg')
user3 = User.new(first_name: 'George',
                 last_name: 'Daren',
                 email: 'adli91@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user3.profile_pic.attach(io: file, filename: 'trainer3.jpg', content_type: 'image/jpg')
user3.save!
# user4 = User.new(first_name: 'Mike', last_name: 'Tyson', email: 'adli92@gmail.com', password: '123456', address: 'London')
# user5 = User.new(first_name: 'Lara', last_name: 'Croft', email: 'adli89@gmail.com', password: '123456', address: 'London')
# user6 = User.new(first_name: 'Sonia', last_name: 'Daren', email: 'adli67@gmail.com', password: '123456', address: 'London')
# user7 = User.new(first_name: 'Maya', last_name: 'Mira', email: 'adli62@gmail.com', password: '123456', address: 'London')

puts 'Seeding categories'
category1 = Category.create!(name: 'Yoga')
category2 = Category.create!(name: 'Crossfit')
category3 = Category.create!(name: 'Pilates')
category4 = Category.create!(name: 'Boxing')
category5 = Category.create!(name: 'Tennis')
category6 = Category.create!(name: 'Diving')
category7 = Category.create!(name: 'Horse Racing')


puts 'Seeding services'

puts user1
file = URI.open('https://images.unsplash.com/photo-1594737626072-90dc274bc2bd?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1700&q=80.jpg')
service = Service.new(
                      category: category1,
                      details: 'Come and join me',
                      price_per_hour: '15',
                      service_address: 'France Lynch, Stroud, England, United Kingdom')
service.photo.attach(io: file, filename: 'service.jpg', content_type: 'image/jpg')
service.user_id = user1.id
service.save!

puts user2
file = URI.open('https://images.unsplash.com/photo-1594381898411-846e7d193883?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=80.jpg')
service1 = Service.new(trainer: user2,
                       category: category2,
                       details: 'Come and join me',
                       price_per_hour: '11',
                       service_address: 'Lyon, Auvergne-Rhône-Alpes, France')
service1.photo.attach(io: file, filename: 'service2.jpg', content_type: 'image/jpg')
service1.save!

puts user3
file = URI.open('https://images.unsplash.com/photo-1534438327276-14e5300c3a48?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=80.jpg')
service2 = Service.new(trainer: user3,
                       category: category3,
                       details: 'Come and join me',
                       price_per_hour: '13',
                       service_address: 'Marsett, Richmondshire, England, United Kingdom')
service2.photo.attach(io: file, filename: 'service3.jpg', content_type: 'image/jpg')
service2.save!

puts 'Seed finalised'

# service = Service.new(trainer: user4, category: category4, details: 'Come and join me', price_per_hour: '12', service_address: 'Birmingham, England, United Kingdom')
# service.save!

# service = Service.new(trainer: user5, category: category5, details: 'Come and join me', price_per_hour: '10', service_address: 'Manchester, England, United Kingdom')
# service.save!


# service = Service.new(trainer: user6, category: category6, details: 'Come and join me', price_per_hour: '20', service_address: 'Leeds, England, United Kingdom')
# service.save!

# service = Service.new(trainer: user7, category: category7, details: 'Come and join me', price_per_hour: '25', service_address: 'Harlow, England, United Kingdom')
# service.save!
