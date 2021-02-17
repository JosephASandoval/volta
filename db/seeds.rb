# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all

demo = User.create!(
  username: 'demouser',
  password: 'password',
  email: 'demouser@gmail.com',
  first_name: 'demo',
  last_name: 'user'
)

models = Product.create!(
  name: 'Model S',
  price: 80000,
  exterior_color: "Red Multi-Coat",
  interior_color: "Black and White",
  wheel_type: "19'' Tempest Wheels",
  trim: "Long Range",
  self_driving: true
)

model3 = Product.create!(
  name: "Model 3",
  price: 30000,
  exterior_color: "Solid Black",
  interior_color: "All Black",
  wheel_type: "18'' Aero Wheels",
  trim: "Standard Range Plus",
  self_driving: true
)

modelx = Product.create!(
  name: "Model X",
  price: 90000,
  exterior_color: "Pearl White Multi-Coat",
  interior_color: "Cream",
  wheel_type: "20'' Cyberstream Wheels",
  trim: "Plaid",
  self_driving: true
)

modely = Product.create!(
  name: "Model Y",
  price: 40000,
  exterior_color: "Deep Blue Metallic",
  interior_color: "All Black",
  wheel_type: "19'' Gemini Wheels",
  trim: "Standard Range",
  self_driving: true
)