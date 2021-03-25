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
user1 = User.new(first_name: 'Julio',
                 last_name: 'Quintana',
                 email: 'juliothedon@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user1.profile_pic.attach(io: file, filename: 'trainer.jpg', content_type: 'image/jpg')
user1.save!

file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614886871/image_17_ztojgm.jpg')
user2 = User.new(first_name: 'Marco',
                 last_name: 'Ranieri',
                 email: 'mrranieri@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user2.profile_pic.attach(io: file, filename: 'trainer2.jpg', content_type: 'image/jpg')
user2.save!




file = URI.open('https://images.unsplash.com/photo-1518459031867-a89b944bffe4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1025&q=80.jpg')
user3 = User.new(first_name: 'Heather',
                 last_name: 'Swanson',
                 email: 'hswanson@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user3.profile_pic.attach(io: file, filename: 'trainer3.jpg', content_type: 'image/jpg')
user3.save!



file = URI.open('https://images.unsplash.com/photo-1590048531448-abc75e64f28d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80.jpg')
user4 = User.new(first_name: 'George',
                 last_name: 'Ellery-Masson',
                 email: 'gellery2395@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user4.profile_pic.attach(io: file, filename: 'trainer4.jpg', content_type: 'image/jpg')
user4.save!

file = URI.open('https://images.unsplash.com/photo-1533681717801-1bbd2ec8d269?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80.jpg')
user5 = User.new(first_name: 'Roberta',
                 last_name: 'Silva',
                 email: 'robsilva@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user5.profile_pic.attach(io: file, filename: 'trainer5.jpg', content_type: 'image/jpg')
user5.save!

file = URI.open('https://images.unsplash.com/photo-1598971862175-e5b46121680a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80.jpg')
user6 = User.new(first_name: 'Michael',
                 last_name: 'Johnson',
                 email: 'mj1@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user6.profile_pic.attach(io: file, filename: 'trainer6.jpg', content_type: 'image/jpg')
user6.save!

file = URI.open('https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80.jpg')
user7 = User.new(first_name: 'Harold',
                 last_name: 'Smith',
                 email: 'haroldsmith@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user7.profile_pic.attach(io: file, filename: 'trainer7.jpg', content_type: 'image/jpg')
user7.save!

file = URI.open('https://images.unsplash.com/photo-1597452494947-f2986526d1be?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80.jpg')
user8 = User.new(first_name: 'Clark',
                 last_name: 'Jones',
                 email: 'superjones@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user8.profile_pic.attach(io: file, filename: 'trainer8.jpg', content_type: 'image/jpg')
user8.save!

file = URI.open('https://images.unsplash.com/photo-1532029837206-abbe2b7620e3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80.jpg')
user9 = User.new(first_name: 'Albert',
                 last_name: 'Donell',
                 email: 'dumblesauce@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user9.profile_pic.attach(io: file, filename: 'trainer9.jpg', content_type: 'image/jpg')
user9.save!

file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614886871/image_21_ax4aue.jpg')
user10 = User.new(first_name: 'Jamie',
                 last_name: 'Pond',
                 email: 'horcruxes4life@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user10.profile_pic.attach(io: file, filename: 'trainer10.jpg', content_type: 'image/jpg')
user10.save!

file = URI.open('https://images.unsplash.com/photo-1585892478508-130c50eb7a69?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80.jpg')
user11 = User.new(first_name: 'Gillis',
                 last_name: 'Rikardsson',
                 email: 'abbalover@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user11.profile_pic.attach(io: file, filename: 'trainer11.jpg', content_type: 'image/jpg')
user11.save!

file = URI.open('https://images.unsplash.com/photo-1571019613576-2b22c76fd955?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80.jpg')
user12 = User.new(first_name: 'Odaylia',
                 last_name: 'Abu Saleh',
                 email: 'alloday@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user12.profile_pic.attach(io: file, filename: 'trainer12.jpg', content_type: 'image/jpg')
user12.save!



# user4 = User.new(first_name: 'Mike', last_name: 'Tyson', email: 'adli92@gmail.com', password: '123456', address: 'London')
# user5 = User.new(first_name: 'Lara', last_name: 'Croft', email: 'adli89@gmail.com', password: '123456', address: 'London')
# user6 = User.new(first_name: 'Sonia', last_name: 'Daren', email: 'adli67@gmail.com', password: '123456', address: 'London')
# user7 = User.new(first_name: 'Maya', last_name: 'Mira', email: 'adli62@gmail.com', password: '123456', address: 'London')

puts 'Seeding categories'
category1 = Category.create!(name: 'Yoga')
category2 = Category.create!(name: 'Crossfit')
category3 = Category.create!(name: 'Pilates')
category4 = Category.create!(name: 'Boxing')
category5 = Category.create!(name: 'Bodybuilding')
category6 = Category.create!(name: 'Powerlifting')
category7 = Category.create!(name: 'Cardio')


puts 'Seeding services'

puts user1
file = URI.open('https://images.unsplash.com/photo-1594737626072-90dc274bc2bd?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1700&q=80.jpg')
service = Service.new(
                      category: category1,
                      details: 'General Manager of Fitness!',
                      price_per_hour: '15',
                      service_address: 'London, England, United Kingdom')
service.photo.attach(io: file, filename: 'service.jpg', content_type: 'image/jpg')
service.user_id = user1.id
service.save!

puts user2
file = URI.open('https://images.unsplash.com/photo-1520948013839-62020f374478?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80.jpg')
service1 = Service.new(trainer: user2,
                       category: category2,
                       details: 'Bella Gains!',
                       price_per_hour: '11',
                       service_address: 'London, England, United Kingdom')
service1.photo.attach(io: file, filename: 'service2.jpg', content_type: 'image/jpg')
service1.save!

puts user3
file = URI.open('https://images.unsplash.com/photo-1518611012118-696072aa579a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80.jpg')
service2 = Service.new(trainer: user3,
                       category: category3,
                       details: 'Try and keep up!',
                       price_per_hour: '13',
                       service_address: 'London, England, United Kingdom')
service2.photo.attach(io: file, filename: 'service3.jpg', content_type: 'image/jpg')
service2.save!





puts user4
file = URI.open('https://images.unsplash.com/flagged/photo-1574005280900-3ff489fa1f70?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80.jpg')
service3 = Service.new(trainer: user4,
                       category: category4,
                       details: 'Be the best you!',
                       price_per_hour: '9',
                       service_address: 'London, England, United Kingdom')
service3.photo.attach(io: file, filename: 'service4.jpg', content_type: 'image/jpg')
service3.save!

puts user5
file = URI.open('https://images.unsplash.com/photo-1584863231364-2edc166de576?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80.jpg')
service4 = Service.new(trainer: user5,
                       category: category5,
                       details: 'Power from Portugal',
                       price_per_hour: '11',
                       service_address: 'London, England, United Kingdom')
service4.photo.attach(io: file, filename: 'service5.jpg', content_type: 'image/jpg')
service4.save!

puts user6
file = URI.open('https://images.unsplash.com/photo-1534258936925-c58bed479fcb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80.jpg')
service5 = Service.new(trainer: user6,
                       category: category2,
                       details: 'Be the person you can be!',
                       price_per_hour: '15',
                       service_address: 'London, England, United Kingdom')
service5.photo.attach(io: file, filename: 'service6.jpg', content_type: 'image/jpg')
service5.save!

puts user7
file = URI.open('https://images.unsplash.com/photo-1580261450046-d0a30080dc9b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=653&q=80.jpg')
service6 = Service.new(trainer: user7,
                       category: category6,
                       details: 'You will not regret it!',
                       price_per_hour: '10',
                       service_address: 'London, England, United Kingdom')
service6.photo.attach(io: file, filename: 'service7.jpg', content_type: 'image/jpg')
service6.save!

puts user8
file = URI.open('https://images.unsplash.com/photo-1534367610401-9f5ed68180aa?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80.jpg')
service7 = Service.new(trainer: user8,
                       category: category6,
                       details: 'The guy for powerlifting',
                       price_per_hour: '12',
                       service_address: 'London, England, United Kingdom')
service7.photo.attach(io: file, filename: 'service8.jpg', content_type: 'image/jpg')
service7.save!

puts user9
file = URI.open('https://images.unsplash.com/photo-1558611848-73f7eb4001a1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80.jpg')
service8 = Service.new(trainer: user9,
                       category: category2,
                       details: 'Do you even Lift?!',
                       price_per_hour: '16',
                       service_address: 'London, England, United Kingdom')
service8.photo.attach(io: file, filename: 'service9.jpg', content_type: 'image/jpg')
service8.save!

puts user10
file = URI.open('https://images.unsplash.com/photo-1590487988357-5233b152a9b7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1895&q=80.jpg')
service9 = Service.new(trainer: user10,
                       category: category5,
                       details: 'Go hard or go home!',
                       price_per_hour: '17',
                       service_address: 'London, England, United Kingdom')
service9.photo.attach(io: file, filename: 'service10.jpg', content_type: 'image/jpg')
service9.save!

puts user11
file = URI.open('https://images.unsplash.com/photo-1593079831268-3381b0db4a77?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80.jpg')
service10 = Service.new(trainer: user11,
                       category: category2,
                       details: 'The winner takes it all!',
                       price_per_hour: '8',
                       service_address: 'London, England, United Kingdom')
service10.photo.attach(io: file, filename: 'service11.jpg', content_type: 'image/jpg')
service10.save!

puts user12
file = URI.open('https://images.unsplash.com/photo-1580086319619-3ed498161c77?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80.jpg')
service11 = Service.new(trainer: user12,
                       category: category5,
                       details: 'Stretch your limits!',
                       price_per_hour: '19',
                       service_address: 'London, England, United Kingdom')
service11.photo.attach(io: file, filename: 'service12.jpg', content_type: 'image/jpg')
service11.save!






puts 'Seed finalised'

# service = Service.new(trainer: user4, category: category4, details: 'Come and join me', price_per_hour: '12', service_address: 'Birmingham, England, United Kingdom')
# service.save!

# service = Service.new(trainer: user5, category: category5, details: 'Come and join me', price_per_hour: '10', service_address: 'Manchester, England, United Kingdom')
# service.save!


# service = Service.new(trainer: user6, category: category6, details: 'Come and join me', price_per_hour: '20', service_address: 'Leeds, England, United Kingdom')
# service.save!

# service = Service.new(trainer: user7, category: category7, details: 'Come and join me', price_per_hour: '25', service_address: 'Harlow, England, United Kingdom')
# service.save!
