# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all

u1 = User.create!(
  username: 'user1',
  password: 'password',
  email: 'user1@gmail.com',
  first_name: 'user',
  last_name: '1'
)

u2 = User.create!(
  username: 'user2',
  password: 'password',
  email: 'user2@gmail.com',
  first_name: 'user',
  last_name: '2'
)