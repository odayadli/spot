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

file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614424257/cycling2_1_gqlrop.jpg')
user2 = User.new(first_name: 'Marco',
                 last_name: 'Ranieri',
                 email: 'mrranieri@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user2.profile_pic.attach(io: file, filename: 'trainer2.jpg', content_type: 'image/jpg')
user2.save!




file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614886872/image_18_cssxza.jpg')
user3 = User.new(first_name: 'Olivier',
                 last_name: 'Giroud',
                 email: 'olgiroud@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user3.profile_pic.attach(io: file, filename: 'trainer3.jpg', content_type: 'image/jpg')
user3.save!



file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614886871/Mask_Group_mt7fbx.jpg')
user4 = User.new(first_name: 'George',
                 last_name: 'Ellery-Masson',
                 email: 'gellery2395@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user4.profile_pic.attach(io: file, filename: 'trainer4.jpg', content_type: 'image/jpg')
user4.save!

file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614384771/Mask_Group_lphqhh.jpg')
user5 = User.new(first_name: 'Roberto',
                 last_name: 'Silva',
                 email: 'robsilva@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user5.profile_pic.attach(io: file, filename: 'trainer5.jpg', content_type: 'image/jpg')
user5.save!

file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614886872/image_19_y7fdui.jpg')
user6 = User.new(first_name: 'Michael',
                 last_name: 'Jackson',
                 email: 'heehee@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user6.profile_pic.attach(io: file, filename: 'trainer6.jpg', content_type: 'image/jpg')
user6.save!

file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614886871/image_20_g94lbc.jpg')
user7 = User.new(first_name: 'Boris',
                 last_name: 'Johnson',
                 email: 'mojowithbojo@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user7.profile_pic.attach(io: file, filename: 'trainer7.jpg', content_type: 'image/jpg')
user7.save!

file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614886871/image_22_nrb452.jpg')
user8 = User.new(first_name: 'Clark',
                 last_name: 'Kent',
                 email: 'superkent@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user8.profile_pic.attach(io: file, filename: 'trainer8.jpg', content_type: 'image/jpg')
user8.save!

file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614886871/image_23_mfpur9.jpg')
user9 = User.new(first_name: 'Albus',
                 last_name: 'Dumbelldore',
                 email: 'dumblesauce@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user9.profile_pic.attach(io: file, filename: 'trainer9.jpg', content_type: 'image/jpg')
user9.save!

file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614886871/image_21_ax4aue.jpg')
user10 = User.new(first_name: 'Harry',
                 last_name: 'Potter',
                 email: 'horcruxes4life@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user10.profile_pic.attach(io: file, filename: 'trainer10.jpg', content_type: 'image/jpg')
user10.save!

file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614424257/cycling2_1_gqlrop.jpg')
user11 = User.new(first_name: 'Gillis',
                 last_name: 'Rikardsson',
                 email: 'abbalover@gmail.com',
                 password: '123456',
                 trainer: true,
                 address: 'London')
user11.profile_pic.attach(io: file, filename: 'trainer11.jpg', content_type: 'image/jpg')
user11.save!

file = URI.open('https://res.cloudinary.com/ds188a5lw/image/upload/v1614423879/trainer_zavqtc.jpg')
user12 = User.new(first_name: 'Oday',
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
category5 = Category.create!(name: 'Tennis')
category6 = Category.create!(name: 'Diving')
category7 = Category.create!(name: 'Horse Racing')


puts 'Seeding services'

puts user1
file = URI.open('https://images.unsplash.com/photo-1594737626072-90dc274bc2bd?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1700&q=80.jpg')
service = Service.new(
                      category: category1,
                      details: 'Come and join me!',
                      price_per_hour: '15',
                      service_address: 'France Lynch, Stroud, England, United Kingdom')
service.photo.attach(io: file, filename: 'service.jpg', content_type: 'image/jpg')
service.user_id = user1.id
service.save!

puts user2
file = URI.open('https://images.unsplash.com/photo-1517963628607-235ccdd5476c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1951&q=80.jpg')
service1 = Service.new(trainer: user2,
                       category: category2,
                       details: 'Come and join me!',
                       price_per_hour: '11',
                       service_address: 'Lyon, Auvergne-Rhône-Alpes, France')
service1.photo.attach(io: file, filename: 'service2.jpg', content_type: 'image/jpg')
service1.save!

puts user3
file = URI.open('https://images.unsplash.com/photo-1534438327276-14e5300c3a48?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=80.jpg')
service2 = Service.new(trainer: user3,
                       category: category3,
                       details: 'Come and join me!',
                       price_per_hour: '13',
                       service_address: 'Marsett, Richmondshire, England, United Kingdom')
service2.photo.attach(io: file, filename: 'service3.jpg', content_type: 'image/jpg')
service2.save!





puts user4
file = URI.open('https://images.unsplash.com/photo-1544368666-40de09f53bbf?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80.jpg')
service3 = Service.new(trainer: user4,
                       category: category4,
                       details: 'Come and join me!',
                       price_per_hour: '9',
                       service_address: 'London, England, United Kingdom')
service3.photo.attach(io: file, filename: 'service4.jpg', content_type: 'image/jpg')
service3.save!

puts user5
file = URI.open('https://images.unsplash.com/photo-1519859660545-3dea8ddf683c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80.jpg')
service4 = Service.new(trainer: user5,
                       category: category5,
                       details: 'Come and join me!',
                       price_per_hour: '11',
                       service_address: 'London, England, United Kingdom')
service4.photo.attach(io: file, filename: 'service5.jpg', content_type: 'image/jpg')
service4.save!

puts user6
file = URI.open('https://images.unsplash.com/photo-1534258936925-c58bed479fcb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80.jpg')
service5 = Service.new(trainer: user6,
                       category: category6,
                       details: 'Come and join me!',
                       price_per_hour: '15',
                       service_address: 'London, England, United Kingdom')
service5.photo.attach(io: file, filename: 'service6.jpg', content_type: 'image/jpg')
service5.save!

puts user7
file = URI.open('https://images.unsplash.com/photo-1609899494145-417d7327ea9e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80.jpg')
service6 = Service.new(trainer: user7,
                       category: category7,
                       details: 'Come and join me!',
                       price_per_hour: '10',
                       service_address: 'London, England, United Kingdom')
service6.photo.attach(io: file, filename: 'service7.jpg', content_type: 'image/jpg')
service6.save!

puts user8
file = URI.open('https://images.unsplash.com/photo-1534367610401-9f5ed68180aa?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80.jpg')
service7 = Service.new(trainer: user8,
                       category: category6,
                       details: 'Come and join me!',
                       price_per_hour: '12',
                       service_address: 'London, England, United Kingdom')
service7.photo.attach(io: file, filename: 'service8.jpg', content_type: 'image/jpg')
service7.save!

puts user9
file = URI.open('https://images.unsplash.com/photo-1588906467706-5b5db3c388bf?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80.jpg')
service8 = Service.new(trainer: user9,
                       category: category4,
                       details: 'Come and join me!',
                       price_per_hour: '16',
                       service_address: 'London, England, United Kingdom')
service8.photo.attach(io: file, filename: 'service9.jpg', content_type: 'image/jpg')
service8.save!

puts user10
file = URI.open('https://images.unsplash.com/photo-1590487988357-5233b152a9b7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1895&q=80.jpg')
service9 = Service.new(trainer: user10,
                       category: category3,
                       details: 'Come and join me!',
                       price_per_hour: '17',
                       service_address: 'London, England, United Kingdom')
service9.photo.attach(io: file, filename: 'service10.jpg', content_type: 'image/jpg')
service9.save!

puts user11
file = URI.open('https://images.unsplash.com/photo-1606013686856-bf2b1c2997e4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80.jpg')
service10 = Service.new(trainer: user11,
                       category: category2,
                       details: 'Come and join me!',
                       price_per_hour: '8',
                       service_address: 'London, England, United Kingdom')
service10.photo.attach(io: file, filename: 'service11.jpg', content_type: 'image/jpg')
service10.save!

puts user12
file = URI.open('https://images.unsplash.com/photo-1580086319619-3ed498161c77?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80.jpg')
service11 = Service.new(trainer: user12,
                       category: category5,
                       details: 'Come and join me!',
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
