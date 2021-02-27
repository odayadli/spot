# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.new(first_name: 'Oday', last_name: 'adli', email: 'adli93@gmail.com', password: '123456', address: 'London')
user2 = User.new(first_name: 'Gillis', last_name: 'Rikka', email: 'adli97@gmail.com', password: '123456', address: 'London')
user3= User.new(first_name: 'George', last_name: 'Daren', email: 'adli91@gmail.com', password: '123456', address: 'London')
3.times do
  service = Service.new(trainer: user1, details: 'crossfit', price_per_hour: '15', address: 'london')
  service.save!
end

3.times do
  service = Service.new(trainer: user2, details: 'yoga', price_per_hour: '11', address: 'london')
  service.save!
end

3.times do
  service = Service.new(trainer: user3, details: 'kickboxing', price_per_hour: '12', address: 'london')
  service.save!
end
