require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  User.destroy_all
  Review.destroy_all
  # Product.destroy_all

  puts "Creating Users..."

  demo = User.create!(
    username: "demouser",
    password: "password",
    email: "demouser@gmail.com",
    first_name: "demo",
    last_name: "user",
  )

  u1 = User.create!(
    username: "ShawnLiu",
    password: "password",
    email: "ShawnLiu@gmail.com",
    first_name: "Shawn",
    last_name: "Liu",
  )

  u2 = User.create!(
    username: "JosephSandoval",
    password: "password",
    email: "JosephSandoval@gmail.com",
    first_name: "Joseph",
    last_name: "Sandoval",
  )

  u3 = User.create!(
    username: "FavianHo",
    password: "password",
    email: "FavianHo@gmail.com",
    first_name: "Favian",
    last_name: "Ho",
  )

  u4 = User.create!(
    username: "MichaelMa",
    password: "password",
    email: "MichaelMa@gmail.com",
    first_name: "Michael",
    last_name: "Ma",
  )

  u5 = User.create!(
    username: "LouisChen",
    password: "password",
    email: "LouisChen@gmail.com",
    first_name: "Louis",
    last_name: "Chen",
  )

  u6 = User.create!(
    username: "DavidYan",
    password: "password",
    email: "DavidYan@gmail.com",
    first_name: "David",
    last_name: "Yan",
  )

	puts "Creating Reviews..."

	r_1 = Review.create!(
		content: "I love this car! It goes really fast and has saved me so much money by switching to electric.",
		rating: 5,
		product_id: 3129,
		author_id: demo.id,
	)

	r_2 = Review.create!(
		content: "Not impressed, will be returning it soon.",
		rating: 1,
		product_id: 3129,
		author_id: u1.id,
	)

	r_3 = Review.create!(
		content: "It's definitely a great car, just a bit to expensive for what you get. Overall, I'm happy with my purchase.",
		rating: 4,
		product_id: 3129,
		author_id: u2.id,
	)

	r_4 = Review.create!(
		content: "My kids love riding in this car. There is so much room to fit all of my families needs. Will continue to take this car out on every family trip!",
		rating: 5,
		product_id: 3429,
		author_id: u3.id,
	)
	
	r_5 = Review.create!(
		content: "A bit too pricey, wish I went with the Model Y instead.",
		rating: 3,
		product_id: 3429,
		author_id: u4.id,
	)

	r_6 = Review.create!(
		content: "Off road is not very comfortable. Go with a cheaper SUV alternative. Will try returning or selling it at the very least.",
		rating: 1,
		product_id: 3429,
		author_id: u5.id,
	)

	r_7 = Review.create!(
		content: "Just pay the extra money for a Model S instead. This car is too compact. Not enough room to fit all of my friends.",
		rating: 2,
		product_id: 3729,
		author_id: u6.id,
	)

	r_8 = Review.create!(
		content: "Really affordable and the built in tech is amazing. Highly recommend that you pay the extra money for the self-driving feature. Really cool and useful after a long and tiring day after work during my commute back home.",
		rating: 5,
		product_id: 3729,
		author_id: demo.id,
	)

	r_9 = Review.create!(
		content: "Buy one now! You won't regret it.",
		rating: 5,
		product_id: 3729,
		author_id: u1.id,
	)

	r_10 = Review.create!(
		content: "Best bang for your buck! You get plenty of room if you're looking to take it out on a family trip. Also, it is small enough to drive around the city. Very much enjoying my Model Y.",
		rating: 4,
		product_id: 3929,
		author_id: u2.id,
	)

	r_11 = Review.create!(
		content: "Needs a few improvements. The stearing and handling isn't perfect. I do like the car. Volta just needs to make the neccessary changes before I can give it anything more than 3 stars.",
		rating: 3,
		product_id: 3929,
		author_id: u3.id,
	)

	r_12 = Review.create!(
		content: "The best Model in my opinion. The Model Y is sleek and stylish to take on a night out, but also very family friendly and has plenty of storage space. Highly recommend buying this one!",
		rating: 5,
		product_id: 3929,
		author_id: u4.id,
	)

  # puts "Creating Model S..."

	# car_s_0 = Product.create!(
	# 	name: "Model S",
	# 	price: 78490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_0_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_false_FRONT34.jpg")
	# car_s_0.photo.attach(io: car_s_0_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_false_FRONT34.jpg")

	# car_s_1 = Product.create!(
	# 	name: "Model S",
	# 	price: 78490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_1_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_false_SIDE.jpg")
	# car_s_1.photo.attach(io: car_s_1_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_false_SIDE.jpg")

	# car_s_2 = Product.create!(
	# 	name: "Model S",
	# 	price: 78490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_2_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_false_REAR34.jpg")
	# car_s_2.photo.attach(io: car_s_2_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_false_REAR34.jpg")

	# car_s_3 = Product.create!(
	# 	name: "Model S",
	# 	price: 78490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_3_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_false_RIMCLOSEUP.jpg")
	# car_s_3.photo.attach(io: car_s_3_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_false_RIMCLOSEUP.jpg")

	# car_s_4 = Product.create!(
	# 	name: "Model S",
	# 	price: 78490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_4_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_false_INTERIOR.jpg")
	# car_s_4.photo.attach(io: car_s_4_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_false_INTERIOR.jpg")

	# car_s_5 = Product.create!(
	# 	name: "Model S",
	# 	price: 88490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_5_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_true_FRONT34.jpg")
	# car_s_5.photo.attach(io: car_s_5_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_true_FRONT34.jpg")

	# car_s_6 = Product.create!(
	# 	name: "Model S",
	# 	price: 88490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_6_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_true_SIDE.jpg")
	# car_s_6.photo.attach(io: car_s_6_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_true_SIDE.jpg")

	# car_s_7 = Product.create!(
	# 	name: "Model S",
	# 	price: 88490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_7_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_true_REAR34.jpg")
	# car_s_7.photo.attach(io: car_s_7_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_true_REAR34.jpg")

	# car_s_8 = Product.create!(
	# 	name: "Model S",
	# 	price: 88490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_8_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_true_RIMCLOSEUP.jpg")
	# car_s_8.photo.attach(io: car_s_8_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_true_RIMCLOSEUP.jpg")

	# car_s_9 = Product.create!(
	# 	name: "Model S",
	# 	price: 88490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_9_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_true_INTERIOR.jpg")
	# car_s_9.photo.attach(io: car_s_9_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_true_INTERIOR.jpg")

	# car_s_10 = Product.create!(
	# 	name: "Model S",
	# 	price: 80490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_10_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_false_FRONT34.jpg")
	# car_s_10.photo.attach(io: car_s_10_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_false_FRONT34.jpg")

	# car_s_11 = Product.create!(
	# 	name: "Model S",
	# 	price: 80490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_11_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_false_SIDE.jpg")
	# car_s_11.photo.attach(io: car_s_11_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_false_SIDE.jpg")

	# car_s_12 = Product.create!(
	# 	name: "Model S",
	# 	price: 80490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_12_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_false_REAR34.jpg")
	# car_s_12.photo.attach(io: car_s_12_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_false_REAR34.jpg")

	# car_s_13 = Product.create!(
	# 	name: "Model S",
	# 	price: 80490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_13_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_false_RIMCLOSEUP.jpg")
	# car_s_13.photo.attach(io: car_s_13_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_false_RIMCLOSEUP.jpg")

	# car_s_14 = Product.create!(
	# 	name: "Model S",
	# 	price: 80490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_14_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_false_INTERIOR.jpg")
	# car_s_14.photo.attach(io: car_s_14_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_false_INTERIOR.jpg")

	# car_s_15 = Product.create!(
	# 	name: "Model S",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_15_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_true_FRONT34.jpg")
	# car_s_15.photo.attach(io: car_s_15_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_true_FRONT34.jpg")

	# car_s_16 = Product.create!(
	# 	name: "Model S",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_16_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_true_SIDE.jpg")
	# car_s_16.photo.attach(io: car_s_16_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_true_SIDE.jpg")

	# car_s_17 = Product.create!(
	# 	name: "Model S",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_17_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_true_REAR34.jpg")
	# car_s_17.photo.attach(io: car_s_17_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_true_REAR34.jpg")

	# car_s_18 = Product.create!(
	# 	name: "Model S",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_18_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_true_RIMCLOSEUP.jpg")
	# car_s_18.photo.attach(io: car_s_18_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_true_RIMCLOSEUP.jpg")

	# car_s_19 = Product.create!(
	# 	name: "Model S",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_19_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_true_INTERIOR.jpg")
	# car_s_19.photo.attach(io: car_s_19_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_true_INTERIOR.jpg")

	# car_s_20 = Product.create!(
	# 	name: "Model S",
	# 	price: 80490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_20_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_false_FRONT34.jpg")
	# car_s_20.photo.attach(io: car_s_20_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_false_FRONT34.jpg")

	# car_s_21 = Product.create!(
	# 	name: "Model S",
	# 	price: 80490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_21_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_false_SIDE.jpg")
	# car_s_21.photo.attach(io: car_s_21_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_false_SIDE.jpg")

	# car_s_22 = Product.create!(
	# 	name: "Model S",
	# 	price: 80490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_22_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_false_REAR34.jpg")
	# car_s_22.photo.attach(io: car_s_22_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_false_REAR34.jpg")

	# car_s_23 = Product.create!(
	# 	name: "Model S",
	# 	price: 80490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_23_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_false_RIMCLOSEUP.jpg")
	# car_s_23.photo.attach(io: car_s_23_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_false_RIMCLOSEUP.jpg")

	# car_s_24 = Product.create!(
	# 	name: "Model S",
	# 	price: 80490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_24_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_false_INTERIOR.jpg")
	# car_s_24.photo.attach(io: car_s_24_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_false_INTERIOR.jpg")

	# car_s_25 = Product.create!(
	# 	name: "Model S",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_25_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_true_FRONT34.jpg")
	# car_s_25.photo.attach(io: car_s_25_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_true_FRONT34.jpg")

	# car_s_26 = Product.create!(
	# 	name: "Model S",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_26_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_true_SIDE.jpg")
	# car_s_26.photo.attach(io: car_s_26_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_true_SIDE.jpg")

	# car_s_27 = Product.create!(
	# 	name: "Model S",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_27_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_true_REAR34.jpg")
	# car_s_27.photo.attach(io: car_s_27_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_true_REAR34.jpg")

	# car_s_28 = Product.create!(
	# 	name: "Model S",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_28_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_true_RIMCLOSEUP.jpg")
	# car_s_28.photo.attach(io: car_s_28_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_true_RIMCLOSEUP.jpg")

	# car_s_29 = Product.create!(
	# 	name: "Model S",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_29_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_true_INTERIOR.jpg")
	# car_s_29.photo.attach(io: car_s_29_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_true_INTERIOR.jpg")

	# car_s_30 = Product.create!(
	# 	name: "Model S",
	# 	price: 82990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_30_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_false_FRONT34.jpg")
	# car_s_30.photo.attach(io: car_s_30_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_false_FRONT34.jpg")

	# car_s_31 = Product.create!(
	# 	name: "Model S",
	# 	price: 82990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_31_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_false_SIDE.jpg")
	# car_s_31.photo.attach(io: car_s_31_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_false_SIDE.jpg")

	# car_s_32 = Product.create!(
	# 	name: "Model S",
	# 	price: 82990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_32_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_false_REAR34.jpg")
	# car_s_32.photo.attach(io: car_s_32_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_false_REAR34.jpg")

	# car_s_33 = Product.create!(
	# 	name: "Model S",
	# 	price: 82990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_33_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_false_RIMCLOSEUP.jpg")
	# car_s_33.photo.attach(io: car_s_33_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_false_RIMCLOSEUP.jpg")

	# car_s_34 = Product.create!(
	# 	name: "Model S",
	# 	price: 82990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_34_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_false_INTERIOR.jpg")
	# car_s_34.photo.attach(io: car_s_34_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_false_INTERIOR.jpg")

	# car_s_35 = Product.create!(
	# 	name: "Model S",
	# 	price: 92990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_35_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_true_FRONT34.jpg")
	# car_s_35.photo.attach(io: car_s_35_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_true_FRONT34.jpg")

	# car_s_36 = Product.create!(
	# 	name: "Model S",
	# 	price: 92990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_36_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_true_SIDE.jpg")
	# car_s_36.photo.attach(io: car_s_36_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_true_SIDE.jpg")

	# car_s_37 = Product.create!(
	# 	name: "Model S",
	# 	price: 92990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_37_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_true_REAR34.jpg")
	# car_s_37.photo.attach(io: car_s_37_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_true_REAR34.jpg")

	# car_s_38 = Product.create!(
	# 	name: "Model S",
	# 	price: 92990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_38_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_true_RIMCLOSEUP.jpg")
	# car_s_38.photo.attach(io: car_s_38_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_true_RIMCLOSEUP.jpg")

	# car_s_39 = Product.create!(
	# 	name: "Model S",
	# 	price: 92990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_39_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_true_INTERIOR.jpg")
	# car_s_39.photo.attach(io: car_s_39_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_true_INTERIOR.jpg")

	# car_s_40 = Product.create!(
	# 	name: "Model S",
	# 	price: 84990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_40_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_false_FRONT34.jpg")
	# car_s_40.photo.attach(io: car_s_40_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_false_FRONT34.jpg")

	# car_s_41 = Product.create!(
	# 	name: "Model S",
	# 	price: 84990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_41_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_false_SIDE.jpg")
	# car_s_41.photo.attach(io: car_s_41_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_false_SIDE.jpg")

	# car_s_42 = Product.create!(
	# 	name: "Model S",
	# 	price: 84990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_42_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_false_REAR34.jpg")
	# car_s_42.photo.attach(io: car_s_42_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_false_REAR34.jpg")

	# car_s_43 = Product.create!(
	# 	name: "Model S",
	# 	price: 84990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_43_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_false_RIMCLOSEUP.jpg")
	# car_s_43.photo.attach(io: car_s_43_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_false_RIMCLOSEUP.jpg")

	# car_s_44 = Product.create!(
	# 	name: "Model S",
	# 	price: 84990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_44_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_false_INTERIOR.jpg")
	# car_s_44.photo.attach(io: car_s_44_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_false_INTERIOR.jpg")

	# car_s_45 = Product.create!(
	# 	name: "Model S",
	# 	price: 94990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_45_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_true_FRONT34.jpg")
	# car_s_45.photo.attach(io: car_s_45_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_true_FRONT34.jpg")

	# car_s_46 = Product.create!(
	# 	name: "Model S",
	# 	price: 94990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_46_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_true_SIDE.jpg")
	# car_s_46.photo.attach(io: car_s_46_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_true_SIDE.jpg")

	# car_s_47 = Product.create!(
	# 	name: "Model S",
	# 	price: 94990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_47_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_true_REAR34.jpg")
	# car_s_47.photo.attach(io: car_s_47_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_true_REAR34.jpg")

	# car_s_48 = Product.create!(
	# 	name: "Model S",
	# 	price: 94990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_48_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_true_RIMCLOSEUP.jpg")
	# car_s_48.photo.attach(io: car_s_48_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_true_RIMCLOSEUP.jpg")

	# car_s_49 = Product.create!(
	# 	name: "Model S",
	# 	price: 94990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_49_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_true_INTERIOR.jpg")
	# car_s_49.photo.attach(io: car_s_49_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_true_INTERIOR.jpg")

	# car_s_50 = Product.create!(
	# 	name: "Model S",
	# 	price: 84990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_50_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_false_FRONT34.jpg")
	# car_s_50.photo.attach(io: car_s_50_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_false_FRONT34.jpg")

	# car_s_51 = Product.create!(
	# 	name: "Model S",
	# 	price: 84990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_51_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_false_SIDE.jpg")
	# car_s_51.photo.attach(io: car_s_51_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_false_SIDE.jpg")

	# car_s_52 = Product.create!(
	# 	name: "Model S",
	# 	price: 84990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_52_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_false_REAR34.jpg")
	# car_s_52.photo.attach(io: car_s_52_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_false_REAR34.jpg")

	# car_s_53 = Product.create!(
	# 	name: "Model S",
	# 	price: 84990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_53_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_false_RIMCLOSEUP.jpg")
	# car_s_53.photo.attach(io: car_s_53_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_false_RIMCLOSEUP.jpg")

	# car_s_54 = Product.create!(
	# 	name: "Model S",
	# 	price: 84990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_54_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_false_INTERIOR.jpg")
	# car_s_54.photo.attach(io: car_s_54_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_false_INTERIOR.jpg")

	# car_s_55 = Product.create!(
	# 	name: "Model S",
	# 	price: 94990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_55_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_true_FRONT34.jpg")
	# car_s_55.photo.attach(io: car_s_55_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_true_FRONT34.jpg")

	# car_s_56 = Product.create!(
	# 	name: "Model S",
	# 	price: 94990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_56_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_true_SIDE.jpg")
	# car_s_56.photo.attach(io: car_s_56_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_true_SIDE.jpg")

	# car_s_57 = Product.create!(
	# 	name: "Model S",
	# 	price: 94990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_57_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_true_REAR34.jpg")
	# car_s_57.photo.attach(io: car_s_57_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_true_REAR34.jpg")

	# car_s_58 = Product.create!(
	# 	name: "Model S",
	# 	price: 94990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_58_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_true_RIMCLOSEUP.jpg")
	# car_s_58.photo.attach(io: car_s_58_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_true_RIMCLOSEUP.jpg")

	# car_s_59 = Product.create!(
	# 	name: "Model S",
	# 	price: 94990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_59_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_true_INTERIOR.jpg")
	# car_s_59.photo.attach(io: car_s_59_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_true_INTERIOR.jpg")

	# car_s_60 = Product.create!(
	# 	name: "Model S",
	# 	price: 79990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_60_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_false_FRONT34.jpg")
	# car_s_60.photo.attach(io: car_s_60_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_false_FRONT34.jpg")

	# car_s_61 = Product.create!(
	# 	name: "Model S",
	# 	price: 79990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_61_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_false_SIDE.jpg")
	# car_s_61.photo.attach(io: car_s_61_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_false_SIDE.jpg")

	# car_s_62 = Product.create!(
	# 	name: "Model S",
	# 	price: 79990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_62_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_false_REAR34.jpg")
	# car_s_62.photo.attach(io: car_s_62_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_false_REAR34.jpg")

	# car_s_63 = Product.create!(
	# 	name: "Model S",
	# 	price: 79990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_63_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_false_RIMCLOSEUP.jpg")
	# car_s_63.photo.attach(io: car_s_63_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_false_RIMCLOSEUP.jpg")

	# car_s_64 = Product.create!(
	# 	name: "Model S",
	# 	price: 79990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_64_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_false_INTERIOR.jpg")
	# car_s_64.photo.attach(io: car_s_64_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_false_INTERIOR.jpg")

	# car_s_65 = Product.create!(
	# 	name: "Model S",
	# 	price: 89990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_65_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_true_FRONT34.jpg")
	# car_s_65.photo.attach(io: car_s_65_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_true_FRONT34.jpg")

	# car_s_66 = Product.create!(
	# 	name: "Model S",
	# 	price: 89990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_66_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_true_SIDE.jpg")
	# car_s_66.photo.attach(io: car_s_66_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_true_SIDE.jpg")

	# car_s_67 = Product.create!(
	# 	name: "Model S",
	# 	price: 89990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_67_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_true_REAR34.jpg")
	# car_s_67.photo.attach(io: car_s_67_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_true_REAR34.jpg")

	# car_s_68 = Product.create!(
	# 	name: "Model S",
	# 	price: 89990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_68_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_true_RIMCLOSEUP.jpg")
	# car_s_68.photo.attach(io: car_s_68_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_true_RIMCLOSEUP.jpg")

	# car_s_69 = Product.create!(
	# 	name: "Model S",
	# 	price: 89990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_69_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_true_INTERIOR.jpg")
	# car_s_69.photo.attach(io: car_s_69_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_true_INTERIOR.jpg")

	# car_s_70 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_70_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_false_FRONT34.jpg")
	# car_s_70.photo.attach(io: car_s_70_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_false_FRONT34.jpg")

	# car_s_71 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_71_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_false_SIDE.jpg")
	# car_s_71.photo.attach(io: car_s_71_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_false_SIDE.jpg")

	# car_s_72 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_72_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_false_REAR34.jpg")
	# car_s_72.photo.attach(io: car_s_72_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_false_REAR34.jpg")

	# car_s_73 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_73_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_false_RIMCLOSEUP.jpg")
	# car_s_73.photo.attach(io: car_s_73_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_false_RIMCLOSEUP.jpg")

	# car_s_74 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_74_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_false_INTERIOR.jpg")
	# car_s_74.photo.attach(io: car_s_74_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_false_INTERIOR.jpg")

	# car_s_75 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_75_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_true_FRONT34.jpg")
	# car_s_75.photo.attach(io: car_s_75_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_true_FRONT34.jpg")

	# car_s_76 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_76_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_true_SIDE.jpg")
	# car_s_76.photo.attach(io: car_s_76_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_true_SIDE.jpg")

	# car_s_77 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_77_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_true_REAR34.jpg")
	# car_s_77.photo.attach(io: car_s_77_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_true_REAR34.jpg")

	# car_s_78 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_78_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_true_RIMCLOSEUP.jpg")
	# car_s_78.photo.attach(io: car_s_78_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_true_RIMCLOSEUP.jpg")

	# car_s_79 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_79_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_true_INTERIOR.jpg")
	# car_s_79.photo.attach(io: car_s_79_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_true_INTERIOR.jpg")

	# car_s_80 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_80_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_false_FRONT34.jpg")
	# car_s_80.photo.attach(io: car_s_80_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_false_FRONT34.jpg")

	# car_s_81 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_81_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_false_SIDE.jpg")
	# car_s_81.photo.attach(io: car_s_81_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_false_SIDE.jpg")

	# car_s_82 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_82_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_false_REAR34.jpg")
	# car_s_82.photo.attach(io: car_s_82_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_false_REAR34.jpg")

	# car_s_83 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_83_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_false_RIMCLOSEUP.jpg")
	# car_s_83.photo.attach(io: car_s_83_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_false_RIMCLOSEUP.jpg")

	# car_s_84 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_84_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_false_INTERIOR.jpg")
	# car_s_84.photo.attach(io: car_s_84_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_false_INTERIOR.jpg")

	# car_s_85 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_85_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_true_FRONT34.jpg")
	# car_s_85.photo.attach(io: car_s_85_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_true_FRONT34.jpg")

	# car_s_86 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_86_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_true_SIDE.jpg")
	# car_s_86.photo.attach(io: car_s_86_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_true_SIDE.jpg")

	# car_s_87 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_87_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_true_REAR34.jpg")
	# car_s_87.photo.attach(io: car_s_87_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_true_REAR34.jpg")

	# car_s_88 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_88_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_true_RIMCLOSEUP.jpg")
	# car_s_88.photo.attach(io: car_s_88_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_true_RIMCLOSEUP.jpg")

	# car_s_89 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_89_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_true_INTERIOR.jpg")
	# car_s_89.photo.attach(io: car_s_89_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_true_INTERIOR.jpg")

	# car_s_90 = Product.create!(
	# 	name: "Model S",
	# 	price: 84490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_90_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_false_FRONT34.jpg")
	# car_s_90.photo.attach(io: car_s_90_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_false_FRONT34.jpg")

	# car_s_91 = Product.create!(
	# 	name: "Model S",
	# 	price: 84490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_91_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_false_SIDE.jpg")
	# car_s_91.photo.attach(io: car_s_91_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_false_SIDE.jpg")

	# car_s_92 = Product.create!(
	# 	name: "Model S",
	# 	price: 84490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_92_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_false_REAR34.jpg")
	# car_s_92.photo.attach(io: car_s_92_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_false_REAR34.jpg")

	# car_s_93 = Product.create!(
	# 	name: "Model S",
	# 	price: 84490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_93_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_false_RIMCLOSEUP.jpg")
	# car_s_93.photo.attach(io: car_s_93_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_false_RIMCLOSEUP.jpg")

	# car_s_94 = Product.create!(
	# 	name: "Model S",
	# 	price: 84490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_94_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_false_INTERIOR.jpg")
	# car_s_94.photo.attach(io: car_s_94_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_false_INTERIOR.jpg")

	# car_s_95 = Product.create!(
	# 	name: "Model S",
	# 	price: 94490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_95_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_true_FRONT34.jpg")
	# car_s_95.photo.attach(io: car_s_95_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_true_FRONT34.jpg")

	# car_s_96 = Product.create!(
	# 	name: "Model S",
	# 	price: 94490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_96_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_true_SIDE.jpg")
	# car_s_96.photo.attach(io: car_s_96_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_true_SIDE.jpg")

	# car_s_97 = Product.create!(
	# 	name: "Model S",
	# 	price: 94490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_97_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_true_REAR34.jpg")
	# car_s_97.photo.attach(io: car_s_97_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_true_REAR34.jpg")

	# car_s_98 = Product.create!(
	# 	name: "Model S",
	# 	price: 94490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_98_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_true_RIMCLOSEUP.jpg")
	# car_s_98.photo.attach(io: car_s_98_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_true_RIMCLOSEUP.jpg")

	# car_s_99 = Product.create!(
	# 	name: "Model S",
	# 	price: 94490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_99_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_true_INTERIOR.jpg")
	# car_s_99.photo.attach(io: car_s_99_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_true_INTERIOR.jpg")

	# car_s_100 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_100_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_false_FRONT34.jpg")
	# car_s_100.photo.attach(io: car_s_100_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_false_FRONT34.jpg")

  # puts "Creating Model S_1..."

	# car_s_101 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_101_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_false_SIDE.jpg")
	# car_s_101.photo.attach(io: car_s_101_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_false_SIDE.jpg")

	# car_s_102 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_102_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_false_REAR34.jpg")
	# car_s_102.photo.attach(io: car_s_102_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_false_REAR34.jpg")

	# car_s_103 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_103_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_false_RIMCLOSEUP.jpg")
	# car_s_103.photo.attach(io: car_s_103_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_false_RIMCLOSEUP.jpg")

	# car_s_104 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_104_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_false_INTERIOR.jpg")
	# car_s_104.photo.attach(io: car_s_104_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_false_INTERIOR.jpg")

	# car_s_105 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_105_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_true_FRONT34.jpg")
	# car_s_105.photo.attach(io: car_s_105_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_true_FRONT34.jpg")

	# car_s_106 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_106_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_true_SIDE.jpg")
	# car_s_106.photo.attach(io: car_s_106_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_true_SIDE.jpg")

	# car_s_107 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_107_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_true_REAR34.jpg")
	# car_s_107.photo.attach(io: car_s_107_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_true_REAR34.jpg")

	# car_s_108 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_108_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_true_RIMCLOSEUP.jpg")
	# car_s_108.photo.attach(io: car_s_108_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_true_RIMCLOSEUP.jpg")

	# car_s_109 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_109_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_true_INTERIOR.jpg")
	# car_s_109.photo.attach(io: car_s_109_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_true_INTERIOR.jpg")

	# car_s_110 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_110_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_false_FRONT34.jpg")
	# car_s_110.photo.attach(io: car_s_110_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_false_FRONT34.jpg")

	# car_s_111 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_111_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_false_SIDE.jpg")
	# car_s_111.photo.attach(io: car_s_111_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_false_SIDE.jpg")

	# car_s_112 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_112_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_false_REAR34.jpg")
	# car_s_112.photo.attach(io: car_s_112_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_false_REAR34.jpg")

	# car_s_113 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_113_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_false_RIMCLOSEUP.jpg")
	# car_s_113.photo.attach(io: car_s_113_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_false_RIMCLOSEUP.jpg")

	# car_s_114 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_114_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_false_INTERIOR.jpg")
	# car_s_114.photo.attach(io: car_s_114_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_false_INTERIOR.jpg")

	# car_s_115 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_115_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_true_FRONT34.jpg")
	# car_s_115.photo.attach(io: car_s_115_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_true_FRONT34.jpg")

	# car_s_116 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_116_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_true_SIDE.jpg")
	# car_s_116.photo.attach(io: car_s_116_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_true_SIDE.jpg")

	# car_s_117 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_117_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_true_REAR34.jpg")
	# car_s_117.photo.attach(io: car_s_117_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_true_REAR34.jpg")

	# car_s_118 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_118_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_true_RIMCLOSEUP.jpg")
	# car_s_118.photo.attach(io: car_s_118_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_true_RIMCLOSEUP.jpg")

	# car_s_119 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_119_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_true_INTERIOR.jpg")
	# car_s_119.photo.attach(io: car_s_119_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_true_INTERIOR.jpg")

	# car_s_120 = Product.create!(
	# 	name: "Model S",
	# 	price: 79990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_120_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_false_FRONT34.jpg")
	# car_s_120.photo.attach(io: car_s_120_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_false_FRONT34.jpg")

	# car_s_121 = Product.create!(
	# 	name: "Model S",
	# 	price: 79990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_121_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_false_SIDE.jpg")
	# car_s_121.photo.attach(io: car_s_121_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_false_SIDE.jpg")

	# car_s_122 = Product.create!(
	# 	name: "Model S",
	# 	price: 79990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_122_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_false_REAR34.jpg")
	# car_s_122.photo.attach(io: car_s_122_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_false_REAR34.jpg")

	# car_s_123 = Product.create!(
	# 	name: "Model S",
	# 	price: 79990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_123_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_false_RIMCLOSEUP.jpg")
	# car_s_123.photo.attach(io: car_s_123_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_false_RIMCLOSEUP.jpg")

	# car_s_124 = Product.create!(
	# 	name: "Model S",
	# 	price: 79990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_124_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_false_INTERIOR.jpg")
	# car_s_124.photo.attach(io: car_s_124_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_false_INTERIOR.jpg")

	# car_s_125 = Product.create!(
	# 	name: "Model S",
	# 	price: 89990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_125_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_true_FRONT34.jpg")
	# car_s_125.photo.attach(io: car_s_125_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_true_FRONT34.jpg")

	# car_s_126 = Product.create!(
	# 	name: "Model S",
	# 	price: 89990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_126_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_true_SIDE.jpg")
	# car_s_126.photo.attach(io: car_s_126_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_true_SIDE.jpg")

	# car_s_127 = Product.create!(
	# 	name: "Model S",
	# 	price: 89990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_127_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_true_REAR34.jpg")
	# car_s_127.photo.attach(io: car_s_127_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_true_REAR34.jpg")

	# car_s_128 = Product.create!(
	# 	name: "Model S",
	# 	price: 89990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_128_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_true_RIMCLOSEUP.jpg")
	# car_s_128.photo.attach(io: car_s_128_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_true_RIMCLOSEUP.jpg")

	# car_s_129 = Product.create!(
	# 	name: "Model S",
	# 	price: 89990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_129_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_true_INTERIOR.jpg")
	# car_s_129.photo.attach(io: car_s_129_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_true_INTERIOR.jpg")

	# car_s_130 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_130_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_false_FRONT34.jpg")
	# car_s_130.photo.attach(io: car_s_130_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_false_FRONT34.jpg")

	# car_s_131 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_131_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_false_SIDE.jpg")
	# car_s_131.photo.attach(io: car_s_131_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_false_SIDE.jpg")

	# car_s_132 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_132_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_false_REAR34.jpg")
	# car_s_132.photo.attach(io: car_s_132_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_false_REAR34.jpg")

	# car_s_133 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_133_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_false_RIMCLOSEUP.jpg")
	# car_s_133.photo.attach(io: car_s_133_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_false_RIMCLOSEUP.jpg")

	# car_s_134 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_134_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_false_INTERIOR.jpg")
	# car_s_134.photo.attach(io: car_s_134_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_false_INTERIOR.jpg")

	# car_s_135 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_135_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_true_FRONT34.jpg")
	# car_s_135.photo.attach(io: car_s_135_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_true_FRONT34.jpg")

	# car_s_136 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_136_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_true_SIDE.jpg")
	# car_s_136.photo.attach(io: car_s_136_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_true_SIDE.jpg")

	# car_s_137 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_137_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_true_REAR34.jpg")
	# car_s_137.photo.attach(io: car_s_137_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_true_REAR34.jpg")

	# car_s_138 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_138_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_true_RIMCLOSEUP.jpg")
	# car_s_138.photo.attach(io: car_s_138_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_true_RIMCLOSEUP.jpg")

	# car_s_139 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_139_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_true_INTERIOR.jpg")
	# car_s_139.photo.attach(io: car_s_139_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_true_INTERIOR.jpg")

	# car_s_140 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_140_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_false_FRONT34.jpg")
	# car_s_140.photo.attach(io: car_s_140_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_false_FRONT34.jpg")

	# car_s_141 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_141_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_false_SIDE.jpg")
	# car_s_141.photo.attach(io: car_s_141_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_false_SIDE.jpg")

	# car_s_142 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_142_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_false_REAR34.jpg")
	# car_s_142.photo.attach(io: car_s_142_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_false_REAR34.jpg")

	# car_s_143 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_143_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_false_RIMCLOSEUP.jpg")
	# car_s_143.photo.attach(io: car_s_143_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_false_RIMCLOSEUP.jpg")

	# car_s_144 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_144_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_false_INTERIOR.jpg")
	# car_s_144.photo.attach(io: car_s_144_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_false_INTERIOR.jpg")

	# car_s_145 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_145_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_true_FRONT34.jpg")
	# car_s_145.photo.attach(io: car_s_145_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_true_FRONT34.jpg")

	# car_s_146 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_146_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_true_SIDE.jpg")
	# car_s_146.photo.attach(io: car_s_146_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_true_SIDE.jpg")

	# car_s_147 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_147_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_true_REAR34.jpg")
	# car_s_147.photo.attach(io: car_s_147_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_true_REAR34.jpg")

	# car_s_148 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_148_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_true_RIMCLOSEUP.jpg")
	# car_s_148.photo.attach(io: car_s_148_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_true_RIMCLOSEUP.jpg")

	# car_s_149 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_149_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_true_INTERIOR.jpg")
	# car_s_149.photo.attach(io: car_s_149_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_true_INTERIOR.jpg")

	# car_s_150 = Product.create!(
	# 	name: "Model S",
	# 	price: 84490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_150_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_false_FRONT34.jpg")
	# car_s_150.photo.attach(io: car_s_150_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_false_FRONT34.jpg")

	# car_s_151 = Product.create!(
	# 	name: "Model S",
	# 	price: 84490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_151_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_false_SIDE.jpg")
	# car_s_151.photo.attach(io: car_s_151_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_false_SIDE.jpg")

	# car_s_152 = Product.create!(
	# 	name: "Model S",
	# 	price: 84490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_152_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_false_REAR34.jpg")
	# car_s_152.photo.attach(io: car_s_152_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_false_REAR34.jpg")

	# car_s_153 = Product.create!(
	# 	name: "Model S",
	# 	price: 84490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_153_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_false_RIMCLOSEUP.jpg")
	# car_s_153.photo.attach(io: car_s_153_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_false_RIMCLOSEUP.jpg")

	# car_s_154 = Product.create!(
	# 	name: "Model S",
	# 	price: 84490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_154_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_false_INTERIOR.jpg")
	# car_s_154.photo.attach(io: car_s_154_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_false_INTERIOR.jpg")

	# car_s_155 = Product.create!(
	# 	name: "Model S",
	# 	price: 94490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_155_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_true_FRONT34.jpg")
	# car_s_155.photo.attach(io: car_s_155_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_true_FRONT34.jpg")

	# car_s_156 = Product.create!(
	# 	name: "Model S",
	# 	price: 94490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_156_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_true_SIDE.jpg")
	# car_s_156.photo.attach(io: car_s_156_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_true_SIDE.jpg")

	# car_s_157 = Product.create!(
	# 	name: "Model S",
	# 	price: 94490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_157_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_true_REAR34.jpg")
	# car_s_157.photo.attach(io: car_s_157_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_true_REAR34.jpg")

	# car_s_158 = Product.create!(
	# 	name: "Model S",
	# 	price: 94490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_158_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_true_RIMCLOSEUP.jpg")
	# car_s_158.photo.attach(io: car_s_158_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_true_RIMCLOSEUP.jpg")

	# car_s_159 = Product.create!(
	# 	name: "Model S",
	# 	price: 94490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_159_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_true_INTERIOR.jpg")
	# car_s_159.photo.attach(io: car_s_159_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_true_INTERIOR.jpg")

	# car_s_160 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_160_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_false_FRONT34.jpg")
	# car_s_160.photo.attach(io: car_s_160_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_false_FRONT34.jpg")

	# car_s_161 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_161_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_false_SIDE.jpg")
	# car_s_161.photo.attach(io: car_s_161_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_false_SIDE.jpg")

	# car_s_162 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_162_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_false_REAR34.jpg")
	# car_s_162.photo.attach(io: car_s_162_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_false_REAR34.jpg")

	# car_s_163 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_163_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_false_RIMCLOSEUP.jpg")
	# car_s_163.photo.attach(io: car_s_163_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_false_RIMCLOSEUP.jpg")

	# car_s_164 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_164_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_false_INTERIOR.jpg")
	# car_s_164.photo.attach(io: car_s_164_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_false_INTERIOR.jpg")

	# car_s_165 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_165_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_true_FRONT34.jpg")
	# car_s_165.photo.attach(io: car_s_165_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_true_FRONT34.jpg")

	# car_s_166 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_166_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_true_SIDE.jpg")
	# car_s_166.photo.attach(io: car_s_166_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_true_SIDE.jpg")

	# car_s_167 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_167_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_true_REAR34.jpg")
	# car_s_167.photo.attach(io: car_s_167_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_true_REAR34.jpg")

	# car_s_168 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_168_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_true_RIMCLOSEUP.jpg")
	# car_s_168.photo.attach(io: car_s_168_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_true_RIMCLOSEUP.jpg")

	# car_s_169 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_169_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_true_INTERIOR.jpg")
	# car_s_169.photo.attach(io: car_s_169_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_true_INTERIOR.jpg")

	# car_s_170 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_170_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_false_FRONT34.jpg")
	# car_s_170.photo.attach(io: car_s_170_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_false_FRONT34.jpg")

	# car_s_171 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_171_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_false_SIDE.jpg")
	# car_s_171.photo.attach(io: car_s_171_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_false_SIDE.jpg")

	# car_s_172 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_172_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_false_REAR34.jpg")
	# car_s_172.photo.attach(io: car_s_172_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_false_REAR34.jpg")

	# car_s_173 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_173_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_false_RIMCLOSEUP.jpg")
	# car_s_173.photo.attach(io: car_s_173_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_false_RIMCLOSEUP.jpg")

	# car_s_174 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_174_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_false_INTERIOR.jpg")
	# car_s_174.photo.attach(io: car_s_174_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_false_INTERIOR.jpg")

	# car_s_175 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_175_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_true_FRONT34.jpg")
	# car_s_175.photo.attach(io: car_s_175_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_true_FRONT34.jpg")

	# car_s_176 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_176_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_true_SIDE.jpg")
	# car_s_176.photo.attach(io: car_s_176_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_true_SIDE.jpg")

	# car_s_177 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_177_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_true_REAR34.jpg")
	# car_s_177.photo.attach(io: car_s_177_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_true_REAR34.jpg")

	# car_s_178 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_178_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_true_RIMCLOSEUP.jpg")
	# car_s_178.photo.attach(io: car_s_178_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_true_RIMCLOSEUP.jpg")

	# car_s_179 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_179_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_true_INTERIOR.jpg")
	# car_s_179.photo.attach(io: car_s_179_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_true_INTERIOR.jpg")

	# car_s_180 = Product.create!(
	# 	name: "Model S",
	# 	price: 79990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_180_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_false_FRONT34.jpg")
	# car_s_180.photo.attach(io: car_s_180_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_false_FRONT34.jpg")

	# car_s_181 = Product.create!(
	# 	name: "Model S",
	# 	price: 79990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_181_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_false_SIDE.jpg")
	# car_s_181.photo.attach(io: car_s_181_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_false_SIDE.jpg")

	# car_s_182 = Product.create!(
	# 	name: "Model S",
	# 	price: 79990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_182_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_false_REAR34.jpg")
	# car_s_182.photo.attach(io: car_s_182_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_false_REAR34.jpg")

	# car_s_183 = Product.create!(
	# 	name: "Model S",
	# 	price: 79990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_183_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_false_RIMCLOSEUP.jpg")
	# car_s_183.photo.attach(io: car_s_183_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_false_RIMCLOSEUP.jpg")

	# car_s_184 = Product.create!(
	# 	name: "Model S",
	# 	price: 79990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_184_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_false_INTERIOR.jpg")
	# car_s_184.photo.attach(io: car_s_184_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_false_INTERIOR.jpg")

	# car_s_185 = Product.create!(
	# 	name: "Model S",
	# 	price: 89990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_185_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_true_FRONT34.jpg")
	# car_s_185.photo.attach(io: car_s_185_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_true_FRONT34.jpg")

	# car_s_186 = Product.create!(
	# 	name: "Model S",
	# 	price: 89990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_186_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_true_SIDE.jpg")
	# car_s_186.photo.attach(io: car_s_186_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_true_SIDE.jpg")

	# car_s_187 = Product.create!(
	# 	name: "Model S",
	# 	price: 89990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_187_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_true_REAR34.jpg")
	# car_s_187.photo.attach(io: car_s_187_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_true_REAR34.jpg")

	# car_s_188 = Product.create!(
	# 	name: "Model S",
	# 	price: 89990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_188_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_true_RIMCLOSEUP.jpg")
	# car_s_188.photo.attach(io: car_s_188_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_true_RIMCLOSEUP.jpg")

	# car_s_189 = Product.create!(
	# 	name: "Model S",
	# 	price: 89990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_189_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_true_INTERIOR.jpg")
	# car_s_189.photo.attach(io: car_s_189_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_true_INTERIOR.jpg")

	# car_s_190 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_190_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_false_FRONT34.jpg")
	# car_s_190.photo.attach(io: car_s_190_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_false_FRONT34.jpg")

	# car_s_191 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_191_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_false_SIDE.jpg")
	# car_s_191.photo.attach(io: car_s_191_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_false_SIDE.jpg")

	# car_s_192 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_192_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_false_REAR34.jpg")
	# car_s_192.photo.attach(io: car_s_192_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_false_REAR34.jpg")

	# car_s_193 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_193_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_false_RIMCLOSEUP.jpg")
	# car_s_193.photo.attach(io: car_s_193_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_false_RIMCLOSEUP.jpg")

	# car_s_194 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_194_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_false_INTERIOR.jpg")
	# car_s_194.photo.attach(io: car_s_194_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_false_INTERIOR.jpg")

	# car_s_195 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_195_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_true_FRONT34.jpg")
	# car_s_195.photo.attach(io: car_s_195_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_true_FRONT34.jpg")

	# car_s_196 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_196_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_true_SIDE.jpg")
	# car_s_196.photo.attach(io: car_s_196_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_true_SIDE.jpg")

	# car_s_197 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_197_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_true_REAR34.jpg")
	# car_s_197.photo.attach(io: car_s_197_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_true_REAR34.jpg")

	# car_s_198 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_198_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_true_RIMCLOSEUP.jpg")
	# car_s_198.photo.attach(io: car_s_198_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_true_RIMCLOSEUP.jpg")

	# car_s_199 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_199_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_true_INTERIOR.jpg")
	# car_s_199.photo.attach(io: car_s_199_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_true_INTERIOR.jpg")

	# car_s_200 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_200_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_false_FRONT34.jpg")
	# car_s_200.photo.attach(io: car_s_200_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_false_FRONT34.jpg")	

	# puts "Creating Model S_2..."

	# car_s_201 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_201_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_false_SIDE.jpg")
	# car_s_201.photo.attach(io: car_s_201_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_false_SIDE.jpg")

	# car_s_202 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_202_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_false_REAR34.jpg")
	# car_s_202.photo.attach(io: car_s_202_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_false_REAR34.jpg")

	# car_s_203 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_203_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_false_RIMCLOSEUP.jpg")
	# car_s_203.photo.attach(io: car_s_203_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_false_RIMCLOSEUP.jpg")

	# car_s_204 = Product.create!(
	# 	name: "Model S",
	# 	price: 81990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_204_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_false_INTERIOR.jpg")
	# car_s_204.photo.attach(io: car_s_204_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_false_INTERIOR.jpg")

	# car_s_205 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_205_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_true_FRONT34.jpg")
	# car_s_205.photo.attach(io: car_s_205_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_true_FRONT34.jpg")

	# car_s_206 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_206_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_true_SIDE.jpg")
	# car_s_206.photo.attach(io: car_s_206_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_true_SIDE.jpg")

	# car_s_207 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_207_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_true_REAR34.jpg")
	# car_s_207.photo.attach(io: car_s_207_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_true_REAR34.jpg")

	# car_s_208 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_208_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_true_RIMCLOSEUP.jpg")
	# car_s_208.photo.attach(io: car_s_208_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_true_RIMCLOSEUP.jpg")

	# car_s_209 = Product.create!(
	# 	name: "Model S",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_209_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_true_INTERIOR.jpg")
	# car_s_209.photo.attach(io: car_s_209_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_true_INTERIOR.jpg")

	# car_s_210 = Product.create!(
	# 	name: "Model S",
	# 	price: 84490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_210_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_false_FRONT34.jpg")
	# car_s_210.photo.attach(io: car_s_210_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_false_FRONT34.jpg")

	# car_s_211 = Product.create!(
	# 	name: "Model S",
	# 	price: 84490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_211_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_false_SIDE.jpg")
	# car_s_211.photo.attach(io: car_s_211_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_false_SIDE.jpg")

	# car_s_212 = Product.create!(
	# 	name: "Model S",
	# 	price: 84490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_212_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_false_REAR34.jpg")
	# car_s_212.photo.attach(io: car_s_212_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_false_REAR34.jpg")

	# car_s_213 = Product.create!(
	# 	name: "Model S",
	# 	price: 84490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_213_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_false_RIMCLOSEUP.jpg")
	# car_s_213.photo.attach(io: car_s_213_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_false_RIMCLOSEUP.jpg")

	# car_s_214 = Product.create!(
	# 	name: "Model S",
	# 	price: 84490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_214_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_false_INTERIOR.jpg")
	# car_s_214.photo.attach(io: car_s_214_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_false_INTERIOR.jpg")

	# car_s_215 = Product.create!(
	# 	name: "Model S",
	# 	price: 94490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_215_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_true_FRONT34.jpg")
	# car_s_215.photo.attach(io: car_s_215_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_true_FRONT34.jpg")

	# car_s_216 = Product.create!(
	# 	name: "Model S",
	# 	price: 94490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_216_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_true_SIDE.jpg")
	# car_s_216.photo.attach(io: car_s_216_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_true_SIDE.jpg")

	# car_s_217 = Product.create!(
	# 	name: "Model S",
	# 	price: 94490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_217_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_true_REAR34.jpg")
	# car_s_217.photo.attach(io: car_s_217_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_true_REAR34.jpg")

	# car_s_218 = Product.create!(
	# 	name: "Model S",
	# 	price: 94490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_218_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_true_RIMCLOSEUP.jpg")
	# car_s_218.photo.attach(io: car_s_218_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_true_RIMCLOSEUP.jpg")

	# car_s_219 = Product.create!(
	# 	name: "Model S",
	# 	price: 94490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_219_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_true_INTERIOR.jpg")
	# car_s_219.photo.attach(io: car_s_219_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_true_INTERIOR.jpg")

	# car_s_220 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_220_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_false_FRONT34.jpg")
	# car_s_220.photo.attach(io: car_s_220_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_false_FRONT34.jpg")

	# car_s_221 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_221_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_false_SIDE.jpg")
	# car_s_221.photo.attach(io: car_s_221_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_false_SIDE.jpg")

	# car_s_222 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_222_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_false_REAR34.jpg")
	# car_s_222.photo.attach(io: car_s_222_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_false_REAR34.jpg")

	# car_s_223 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_223_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_false_RIMCLOSEUP.jpg")
	# car_s_223.photo.attach(io: car_s_223_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_false_RIMCLOSEUP.jpg")

	# car_s_224 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_224_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_false_INTERIOR.jpg")
	# car_s_224.photo.attach(io: car_s_224_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_false_INTERIOR.jpg")

	# car_s_225 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_225_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_true_FRONT34.jpg")
	# car_s_225.photo.attach(io: car_s_225_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_true_FRONT34.jpg")

	# car_s_226 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_226_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_true_SIDE.jpg")
	# car_s_226.photo.attach(io: car_s_226_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_true_SIDE.jpg")

	# car_s_227 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_227_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_true_REAR34.jpg")
	# car_s_227.photo.attach(io: car_s_227_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_true_REAR34.jpg")

	# car_s_228 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_228_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_true_RIMCLOSEUP.jpg")
	# car_s_228.photo.attach(io: car_s_228_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_true_RIMCLOSEUP.jpg")

	# car_s_229 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_229_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_true_INTERIOR.jpg")
	# car_s_229.photo.attach(io: car_s_229_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_true_INTERIOR.jpg")

	# car_s_230 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_230_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_false_FRONT34.jpg")
	# car_s_230.photo.attach(io: car_s_230_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_false_FRONT34.jpg")

	# car_s_231 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_231_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_false_SIDE.jpg")
	# car_s_231.photo.attach(io: car_s_231_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_false_SIDE.jpg")

	# car_s_232 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_232_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_false_REAR34.jpg")
	# car_s_232.photo.attach(io: car_s_232_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_false_REAR34.jpg")

	# car_s_233 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_233_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_false_RIMCLOSEUP.jpg")
	# car_s_233.photo.attach(io: car_s_233_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_false_RIMCLOSEUP.jpg")

	# car_s_234 = Product.create!(
	# 	name: "Model S",
	# 	price: 86490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_234_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_false_INTERIOR.jpg")
	# car_s_234.photo.attach(io: car_s_234_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_false_INTERIOR.jpg")

	# car_s_235 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_235_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_true_FRONT34.jpg")
	# car_s_235.photo.attach(io: car_s_235_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_true_FRONT34.jpg")

	# car_s_236 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_236_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_true_SIDE.jpg")
	# car_s_236.photo.attach(io: car_s_236_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_true_SIDE.jpg")

	# car_s_237 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_237_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_true_REAR34.jpg")
	# car_s_237.photo.attach(io: car_s_237_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_true_REAR34.jpg")

	# car_s_238 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_238_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_true_RIMCLOSEUP.jpg")
	# car_s_238.photo.attach(io: car_s_238_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_true_RIMCLOSEUP.jpg")

	# car_s_239 = Product.create!(
	# 	name: "Model S",
	# 	price: 96490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_239_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_true_INTERIOR.jpg")
	# car_s_239.photo.attach(io: car_s_239_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_true_INTERIOR.jpg")

	# car_s_240 = Product.create!(
	# 	name: "Model S",
	# 	price: 80990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_240_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_false_FRONT34.jpg")
	# car_s_240.photo.attach(io: car_s_240_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_false_FRONT34.jpg")

	# car_s_241 = Product.create!(
	# 	name: "Model S",
	# 	price: 80990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_241_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_false_SIDE.jpg")
	# car_s_241.photo.attach(io: car_s_241_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_false_SIDE.jpg")

	# car_s_242 = Product.create!(
	# 	name: "Model S",
	# 	price: 80990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_242_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_false_REAR34.jpg")
	# car_s_242.photo.attach(io: car_s_242_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_false_REAR34.jpg")

	# car_s_243 = Product.create!(
	# 	name: "Model S",
	# 	price: 80990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_243_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_false_RIMCLOSEUP.jpg")
	# car_s_243.photo.attach(io: car_s_243_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_false_RIMCLOSEUP.jpg")

	# car_s_244 = Product.create!(
	# 	name: "Model S",
	# 	price: 80990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_244_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_false_INTERIOR.jpg")
	# car_s_244.photo.attach(io: car_s_244_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_false_INTERIOR.jpg")

	# car_s_245 = Product.create!(
	# 	name: "Model S",
	# 	price: 90990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_245_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_true_FRONT34.jpg")
	# car_s_245.photo.attach(io: car_s_245_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_true_FRONT34.jpg")

	# car_s_246 = Product.create!(
	# 	name: "Model S",
	# 	price: 90990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_246_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_true_SIDE.jpg")
	# car_s_246.photo.attach(io: car_s_246_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_true_SIDE.jpg")

	# car_s_247 = Product.create!(
	# 	name: "Model S",
	# 	price: 90990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_247_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_true_REAR34.jpg")
	# car_s_247.photo.attach(io: car_s_247_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_true_REAR34.jpg")

	# car_s_248 = Product.create!(
	# 	name: "Model S",
	# 	price: 90990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_248_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_true_RIMCLOSEUP.jpg")
	# car_s_248.photo.attach(io: car_s_248_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_true_RIMCLOSEUP.jpg")

	# car_s_249 = Product.create!(
	# 	name: "Model S",
	# 	price: 90990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_249_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_true_INTERIOR.jpg")
	# car_s_249.photo.attach(io: car_s_249_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_true_INTERIOR.jpg")

	# car_s_250 = Product.create!(
	# 	name: "Model S",
	# 	price: 82990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_250_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_false_FRONT34.jpg")
	# car_s_250.photo.attach(io: car_s_250_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_false_FRONT34.jpg")

	# car_s_251 = Product.create!(
	# 	name: "Model S",
	# 	price: 82990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_251_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_false_SIDE.jpg")
	# car_s_251.photo.attach(io: car_s_251_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_false_SIDE.jpg")

	# car_s_252 = Product.create!(
	# 	name: "Model S",
	# 	price: 82990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_252_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_false_REAR34.jpg")
	# car_s_252.photo.attach(io: car_s_252_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_false_REAR34.jpg")

	# car_s_253 = Product.create!(
	# 	name: "Model S",
	# 	price: 82990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_253_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_false_RIMCLOSEUP.jpg")
	# car_s_253.photo.attach(io: car_s_253_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_false_RIMCLOSEUP.jpg")

	# car_s_254 = Product.create!(
	# 	name: "Model S",
	# 	price: 82990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_254_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_false_INTERIOR.jpg")
	# car_s_254.photo.attach(io: car_s_254_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_false_INTERIOR.jpg")

	# car_s_255 = Product.create!(
	# 	name: "Model S",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_255_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_true_FRONT34.jpg")
	# car_s_255.photo.attach(io: car_s_255_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_true_FRONT34.jpg")

	# car_s_256 = Product.create!(
	# 	name: "Model S",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_256_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_true_SIDE.jpg")
	# car_s_256.photo.attach(io: car_s_256_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_true_SIDE.jpg")

	# car_s_257 = Product.create!(
	# 	name: "Model S",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_257_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_true_REAR34.jpg")
	# car_s_257.photo.attach(io: car_s_257_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_true_REAR34.jpg")

	# car_s_258 = Product.create!(
	# 	name: "Model S",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_258_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_true_RIMCLOSEUP.jpg")
	# car_s_258.photo.attach(io: car_s_258_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_true_RIMCLOSEUP.jpg")

	# car_s_259 = Product.create!(
	# 	name: "Model S",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_259_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_true_INTERIOR.jpg")
	# car_s_259.photo.attach(io: car_s_259_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_true_INTERIOR.jpg")

	# car_s_260 = Product.create!(
	# 	name: "Model S",
	# 	price: 82990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_260_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_false_FRONT34.jpg")
	# car_s_260.photo.attach(io: car_s_260_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_false_FRONT34.jpg")

	# car_s_261 = Product.create!(
	# 	name: "Model S",
	# 	price: 82990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_261_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_false_SIDE.jpg")
	# car_s_261.photo.attach(io: car_s_261_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_false_SIDE.jpg")

	# car_s_262 = Product.create!(
	# 	name: "Model S",
	# 	price: 82990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_262_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_false_REAR34.jpg")
	# car_s_262.photo.attach(io: car_s_262_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_false_REAR34.jpg")

	# car_s_263 = Product.create!(
	# 	name: "Model S",
	# 	price: 82990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_263_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_false_RIMCLOSEUP.jpg")
	# car_s_263.photo.attach(io: car_s_263_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_false_RIMCLOSEUP.jpg")

	# car_s_264 = Product.create!(
	# 	name: "Model S",
	# 	price: 82990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_264_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_false_INTERIOR.jpg")
	# car_s_264.photo.attach(io: car_s_264_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_false_INTERIOR.jpg")

	# car_s_265 = Product.create!(
	# 	name: "Model S",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_265_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_true_FRONT34.jpg")
	# car_s_265.photo.attach(io: car_s_265_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_true_FRONT34.jpg")

	# car_s_266 = Product.create!(
	# 	name: "Model S",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_266_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_true_SIDE.jpg")
	# car_s_266.photo.attach(io: car_s_266_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_true_SIDE.jpg")

	# car_s_267 = Product.create!(
	# 	name: "Model S",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_267_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_true_REAR34.jpg")
	# car_s_267.photo.attach(io: car_s_267_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_true_REAR34.jpg")

	# car_s_268 = Product.create!(
	# 	name: "Model S",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_268_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_true_RIMCLOSEUP.jpg")
	# car_s_268.photo.attach(io: car_s_268_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_true_RIMCLOSEUP.jpg")

	# car_s_269 = Product.create!(
	# 	name: "Model S",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "19\" Tempest Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_269_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_true_INTERIOR.jpg")
	# car_s_269.photo.attach(io: car_s_269_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_true_INTERIOR.jpg")

	# car_s_270 = Product.create!(
	# 	name: "Model S",
	# 	price: 85490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_270_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_false_FRONT34.jpg")
	# car_s_270.photo.attach(io: car_s_270_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_false_FRONT34.jpg")

	# car_s_271 = Product.create!(
	# 	name: "Model S",
	# 	price: 85490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_271_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_false_SIDE.jpg")
	# car_s_271.photo.attach(io: car_s_271_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_false_SIDE.jpg")

	# car_s_272 = Product.create!(
	# 	name: "Model S",
	# 	price: 85490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_272_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_false_REAR34.jpg")
	# car_s_272.photo.attach(io: car_s_272_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_false_REAR34.jpg")

	# car_s_273 = Product.create!(
	# 	name: "Model S",
	# 	price: 85490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_273_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_false_RIMCLOSEUP.jpg")
	# car_s_273.photo.attach(io: car_s_273_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_false_RIMCLOSEUP.jpg")

	# car_s_274 = Product.create!(
	# 	name: "Model S",
	# 	price: 85490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_274_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_false_INTERIOR.jpg")
	# car_s_274.photo.attach(io: car_s_274_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_false_INTERIOR.jpg")

	# car_s_275 = Product.create!(
	# 	name: "Model S",
	# 	price: 95490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_275_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_true_FRONT34.jpg")
	# car_s_275.photo.attach(io: car_s_275_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_true_FRONT34.jpg")

	# car_s_276 = Product.create!(
	# 	name: "Model S",
	# 	price: 95490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_276_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_true_SIDE.jpg")
	# car_s_276.photo.attach(io: car_s_276_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_true_SIDE.jpg")

	# car_s_277 = Product.create!(
	# 	name: "Model S",
	# 	price: 95490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_277_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_true_REAR34.jpg")
	# car_s_277.photo.attach(io: car_s_277_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_true_REAR34.jpg")

	# car_s_278 = Product.create!(
	# 	name: "Model S",
	# 	price: 95490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_278_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_true_RIMCLOSEUP.jpg")
	# car_s_278.photo.attach(io: car_s_278_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_true_RIMCLOSEUP.jpg")

	# car_s_279 = Product.create!(
	# 	name: "Model S",
	# 	price: 95490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_279_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_true_INTERIOR.jpg")
	# car_s_279.photo.attach(io: car_s_279_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_true_INTERIOR.jpg")

	# car_s_280 = Product.create!(
	# 	name: "Model S",
	# 	price: 87490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_280_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_false_FRONT34.jpg")
	# car_s_280.photo.attach(io: car_s_280_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_false_FRONT34.jpg")

	# car_s_281 = Product.create!(
	# 	name: "Model S",
	# 	price: 87490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_281_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_false_SIDE.jpg")
	# car_s_281.photo.attach(io: car_s_281_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_false_SIDE.jpg")

	# car_s_282 = Product.create!(
	# 	name: "Model S",
	# 	price: 87490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_282_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_false_REAR34.jpg")
	# car_s_282.photo.attach(io: car_s_282_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_false_REAR34.jpg")

	# car_s_283 = Product.create!(
	# 	name: "Model S",
	# 	price: 87490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_283_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_false_RIMCLOSEUP.jpg")
	# car_s_283.photo.attach(io: car_s_283_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_false_RIMCLOSEUP.jpg")

	# car_s_284 = Product.create!(
	# 	name: "Model S",
	# 	price: 87490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_284_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_false_INTERIOR.jpg")
	# car_s_284.photo.attach(io: car_s_284_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_false_INTERIOR.jpg")

	# car_s_285 = Product.create!(
	# 	name: "Model S",
	# 	price: 97490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_285_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_true_FRONT34.jpg")
	# car_s_285.photo.attach(io: car_s_285_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_true_FRONT34.jpg")

	# car_s_286 = Product.create!(
	# 	name: "Model S",
	# 	price: 97490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_286_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_true_SIDE.jpg")
	# car_s_286.photo.attach(io: car_s_286_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_true_SIDE.jpg")

	# car_s_287 = Product.create!(
	# 	name: "Model S",
	# 	price: 97490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_287_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_true_REAR34.jpg")
	# car_s_287.photo.attach(io: car_s_287_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_true_REAR34.jpg")

	# car_s_288 = Product.create!(
	# 	name: "Model S",
	# 	price: 97490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_288_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_true_RIMCLOSEUP.jpg")
	# car_s_288.photo.attach(io: car_s_288_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_true_RIMCLOSEUP.jpg")

	# car_s_289 = Product.create!(
	# 	name: "Model S",
	# 	price: 97490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_289_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_true_INTERIOR.jpg")
	# car_s_289.photo.attach(io: car_s_289_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_true_INTERIOR.jpg")

	# car_s_290 = Product.create!(
	# 	name: "Model S",
	# 	price: 87490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_s_290_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_false_FRONT34.jpg")
	# car_s_290.photo.attach(io: car_s_290_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_false_FRONT34.jpg")

	# car_s_291 = Product.create!(
	# 	name: "Model S",
	# 	price: 87490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_s_291_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_false_SIDE.jpg")
	# car_s_291.photo.attach(io: car_s_291_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_false_SIDE.jpg")

	# car_s_292 = Product.create!(
	# 	name: "Model S",
	# 	price: 87490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_s_292_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_false_REAR34.jpg")
	# car_s_292.photo.attach(io: car_s_292_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_false_REAR34.jpg")

	# car_s_293 = Product.create!(
	# 	name: "Model S",
	# 	price: 87490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_s_293_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_false_RIMCLOSEUP.jpg")
	# car_s_293.photo.attach(io: car_s_293_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_false_RIMCLOSEUP.jpg")

	# car_s_294 = Product.create!(
	# 	name: "Model S",
	# 	price: 87490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_s_294_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_false_INTERIOR.jpg")
	# car_s_294.photo.attach(io: car_s_294_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_false_INTERIOR.jpg")

	# car_s_295 = Product.create!(
	# 	name: "Model S",
	# 	price: 97490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_s_295_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_true_FRONT34.jpg")
	# car_s_295.photo.attach(io: car_s_295_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_true_FRONT34.jpg")

	# car_s_296 = Product.create!(
	# 	name: "Model S",
	# 	price: 97490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_s_296_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_true_SIDE.jpg")
	# car_s_296.photo.attach(io: car_s_296_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_true_SIDE.jpg")

	# car_s_297 = Product.create!(
	# 	name: "Model S",
	# 	price: 97490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_s_297_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_true_REAR34.jpg")
	# car_s_297.photo.attach(io: car_s_297_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_true_REAR34.jpg")

	# car_s_298 = Product.create!(
	# 	name: "Model S",
	# 	price: 97490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_s_298_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_true_RIMCLOSEUP.jpg")
	# car_s_298.photo.attach(io: car_s_298_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_true_RIMCLOSEUP.jpg")

	# car_s_299 = Product.create!(
	# 	name: "Model S",
	# 	price: 97490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "21\" Arachnid Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_s_299_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_true_INTERIOR.jpg")
	# car_s_299.photo.attach(io: car_s_299_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_true_INTERIOR.jpg")

	# puts "Creating Model X..."

	# car_x_0 = Product.create!(
	# 	name: "Model X",
	# 	price: 88490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_0_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IBE00_false_FRONT34.jpg")
	# car_x_0.photo.attach(io: car_x_0_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IBE00_false_FRONT34.jpg")

	# car_x_1 = Product.create!(
	# 	name: "Model X",
	# 	price: 88490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_1_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IBE00_false_SIDE.jpg")
	# car_x_1.photo.attach(io: car_x_1_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IBE00_false_SIDE.jpg")

	# car_x_2 = Product.create!(
	# 	name: "Model X",
	# 	price: 88490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_2_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IBE00_false_REAR34.jpg")
	# car_x_2.photo.attach(io: car_x_2_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IBE00_false_REAR34.jpg")

	# car_x_3 = Product.create!(
	# 	name: "Model X",
	# 	price: 88490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_3_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IBE00_false_RIMCLOSEUP.jpg")
	# car_x_3.photo.attach(io: car_x_3_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IBE00_false_RIMCLOSEUP.jpg")

	# car_x_4 = Product.create!(
	# 	name: "Model X",
	# 	price: 88490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_4_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IBE00_false_INTERIOR.jpg")
	# car_x_4.photo.attach(io: car_x_4_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IBE00_false_INTERIOR.jpg")

	# car_x_5 = Product.create!(
	# 	name: "Model X",
	# 	price: 98490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_5_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IBE00_true_FRONT34.jpg")
	# car_x_5.photo.attach(io: car_x_5_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IBE00_true_FRONT34.jpg")

	# car_x_6 = Product.create!(
	# 	name: "Model X",
	# 	price: 98490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_6_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IBE00_true_SIDE.jpg")
	# car_x_6.photo.attach(io: car_x_6_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IBE00_true_SIDE.jpg")

	# car_x_7 = Product.create!(
	# 	name: "Model X",
	# 	price: 98490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_7_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IBE00_true_REAR34.jpg")
	# car_x_7.photo.attach(io: car_x_7_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IBE00_true_REAR34.jpg")

	# car_x_8 = Product.create!(
	# 	name: "Model X",
	# 	price: 98490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_8_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IBE00_true_RIMCLOSEUP.jpg")
	# car_x_8.photo.attach(io: car_x_8_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IBE00_true_RIMCLOSEUP.jpg")

	# car_x_9 = Product.create!(
	# 	name: "Model X",
	# 	price: 98490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_9_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IBE00_true_INTERIOR.jpg")
	# car_x_9.photo.attach(io: car_x_9_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IBE00_true_INTERIOR.jpg")

	# car_x_10 = Product.create!(
	# 	name: "Model X",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_10_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IWW00_false_FRONT34.jpg")
	# car_x_10.photo.attach(io: car_x_10_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IWW00_false_FRONT34.jpg")

	# car_x_11 = Product.create!(
	# 	name: "Model X",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_11_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IWW00_false_SIDE.jpg")
	# car_x_11.photo.attach(io: car_x_11_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IWW00_false_SIDE.jpg")

	# car_x_12 = Product.create!(
	# 	name: "Model X",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_12_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IWW00_false_REAR34.jpg")
	# car_x_12.photo.attach(io: car_x_12_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IWW00_false_REAR34.jpg")

	# car_x_13 = Product.create!(
	# 	name: "Model X",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_13_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IWW00_false_RIMCLOSEUP.jpg")
	# car_x_13.photo.attach(io: car_x_13_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IWW00_false_RIMCLOSEUP.jpg")

	# car_x_14 = Product.create!(
	# 	name: "Model X",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_14_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IWW00_false_INTERIOR.jpg")
	# car_x_14.photo.attach(io: car_x_14_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IWW00_false_INTERIOR.jpg")

	# car_x_15 = Product.create!(
	# 	name: "Model X",
	# 	price: 100490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_15_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IWW00_true_FRONT34.jpg")
	# car_x_15.photo.attach(io: car_x_15_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IWW00_true_FRONT34.jpg")

	# car_x_16 = Product.create!(
	# 	name: "Model X",
	# 	price: 100490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_16_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IWW00_true_SIDE.jpg")
	# car_x_16.photo.attach(io: car_x_16_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IWW00_true_SIDE.jpg")

	# car_x_17 = Product.create!(
	# 	name: "Model X",
	# 	price: 100490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_17_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IWW00_true_REAR34.jpg")
	# car_x_17.photo.attach(io: car_x_17_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IWW00_true_REAR34.jpg")

	# car_x_18 = Product.create!(
	# 	name: "Model X",
	# 	price: 100490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_18_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IWW00_true_RIMCLOSEUP.jpg")
	# car_x_18.photo.attach(io: car_x_18_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IWW00_true_RIMCLOSEUP.jpg")

	# car_x_19 = Product.create!(
	# 	name: "Model X",
	# 	price: 100490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_19_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$IWW00_true_INTERIOR.jpg")
	# car_x_19.photo.attach(io: car_x_19_file, filename: "model_x_$MTX10_$PPSW_$WX00_$IWW00_true_INTERIOR.jpg")

	# car_x_20 = Product.create!(
	# 	name: "Model X",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_20_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$ICW00_false_FRONT34.jpg")
	# car_x_20.photo.attach(io: car_x_20_file, filename: "model_x_$MTX10_$PPSW_$WX00_$ICW00_false_FRONT34.jpg")

	# car_x_21 = Product.create!(
	# 	name: "Model X",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_21_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$ICW00_false_SIDE.jpg")
	# car_x_21.photo.attach(io: car_x_21_file, filename: "model_x_$MTX10_$PPSW_$WX00_$ICW00_false_SIDE.jpg")

	# car_x_22 = Product.create!(
	# 	name: "Model X",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_22_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$ICW00_false_REAR34.jpg")
	# car_x_22.photo.attach(io: car_x_22_file, filename: "model_x_$MTX10_$PPSW_$WX00_$ICW00_false_REAR34.jpg")

	# car_x_23 = Product.create!(
	# 	name: "Model X",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_23_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$ICW00_false_RIMCLOSEUP.jpg")
	# car_x_23.photo.attach(io: car_x_23_file, filename: "model_x_$MTX10_$PPSW_$WX00_$ICW00_false_RIMCLOSEUP.jpg")

	# car_x_24 = Product.create!(
	# 	name: "Model X",
	# 	price: 90490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_24_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$ICW00_false_INTERIOR.jpg")
	# car_x_24.photo.attach(io: car_x_24_file, filename: "model_x_$MTX10_$PPSW_$WX00_$ICW00_false_INTERIOR.jpg")

	# car_x_25 = Product.create!(
	# 	name: "Model X",
	# 	price: 100490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_25_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$ICW00_true_FRONT34.jpg")
	# car_x_25.photo.attach(io: car_x_25_file, filename: "model_x_$MTX10_$PPSW_$WX00_$ICW00_true_FRONT34.jpg")

	# car_x_26 = Product.create!(
	# 	name: "Model X",
	# 	price: 100490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_26_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$ICW00_true_SIDE.jpg")
	# car_x_26.photo.attach(io: car_x_26_file, filename: "model_x_$MTX10_$PPSW_$WX00_$ICW00_true_SIDE.jpg")

	# car_x_27 = Product.create!(
	# 	name: "Model X",
	# 	price: 100490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_27_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$ICW00_true_REAR34.jpg")
	# car_x_27.photo.attach(io: car_x_27_file, filename: "model_x_$MTX10_$PPSW_$WX00_$ICW00_true_REAR34.jpg")

	# car_x_28 = Product.create!(
	# 	name: "Model X",
	# 	price: 100490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_28_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$ICW00_true_RIMCLOSEUP.jpg")
	# car_x_28.photo.attach(io: car_x_28_file, filename: "model_x_$MTX10_$PPSW_$WX00_$ICW00_true_RIMCLOSEUP.jpg")

	# car_x_29 = Product.create!(
	# 	name: "Model X",
	# 	price: 100490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_29_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX00_$ICW00_true_INTERIOR.jpg")
	# car_x_29.photo.attach(io: car_x_29_file, filename: "model_x_$MTX10_$PPSW_$WX00_$ICW00_true_INTERIOR.jpg")

	# car_x_30 = Product.create!(
	# 	name: "Model X",
	# 	price: 93990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_30_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IBE00_false_FRONT34.jpg")
	# car_x_30.photo.attach(io: car_x_30_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IBE00_false_FRONT34.jpg")

	# car_x_31 = Product.create!(
	# 	name: "Model X",
	# 	price: 93990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_31_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IBE00_false_SIDE.jpg")
	# car_x_31.photo.attach(io: car_x_31_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IBE00_false_SIDE.jpg")

	# car_x_32 = Product.create!(
	# 	name: "Model X",
	# 	price: 93990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_32_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IBE00_false_REAR34.jpg")
	# car_x_32.photo.attach(io: car_x_32_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IBE00_false_REAR34.jpg")

	# car_x_33 = Product.create!(
	# 	name: "Model X",
	# 	price: 93990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_33_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IBE00_false_RIMCLOSEUP.jpg")
	# car_x_33.photo.attach(io: car_x_33_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IBE00_false_RIMCLOSEUP.jpg")

	# car_x_34 = Product.create!(
	# 	name: "Model X",
	# 	price: 93990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_34_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IBE00_false_INTERIOR.jpg")
	# car_x_34.photo.attach(io: car_x_34_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IBE00_false_INTERIOR.jpg")

	# car_x_35 = Product.create!(
	# 	name: "Model X",
	# 	price: 103990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_35_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IBE00_true_FRONT34.jpg")
	# car_x_35.photo.attach(io: car_x_35_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IBE00_true_FRONT34.jpg")

	# car_x_36 = Product.create!(
	# 	name: "Model X",
	# 	price: 103990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_36_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IBE00_true_SIDE.jpg")
	# car_x_36.photo.attach(io: car_x_36_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IBE00_true_SIDE.jpg")

	# car_x_37 = Product.create!(
	# 	name: "Model X",
	# 	price: 103990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_37_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IBE00_true_REAR34.jpg")
	# car_x_37.photo.attach(io: car_x_37_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IBE00_true_REAR34.jpg")

	# car_x_38 = Product.create!(
	# 	name: "Model X",
	# 	price: 103990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_38_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IBE00_true_RIMCLOSEUP.jpg")
	# car_x_38.photo.attach(io: car_x_38_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IBE00_true_RIMCLOSEUP.jpg")

	# car_x_39 = Product.create!(
	# 	name: "Model X",
	# 	price: 103990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_39_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IBE00_true_INTERIOR.jpg")
	# car_x_39.photo.attach(io: car_x_39_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IBE00_true_INTERIOR.jpg")

	# car_x_40 = Product.create!(
	# 	name: "Model X",
	# 	price: 95990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_40_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IWW00_false_FRONT34.jpg")
	# car_x_40.photo.attach(io: car_x_40_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IWW00_false_FRONT34.jpg")

	# car_x_41 = Product.create!(
	# 	name: "Model X",
	# 	price: 95990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_41_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IWW00_false_SIDE.jpg")
	# car_x_41.photo.attach(io: car_x_41_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IWW00_false_SIDE.jpg")

	# car_x_42 = Product.create!(
	# 	name: "Model X",
	# 	price: 95990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_42_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IWW00_false_REAR34.jpg")
	# car_x_42.photo.attach(io: car_x_42_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IWW00_false_REAR34.jpg")

	# car_x_43 = Product.create!(
	# 	name: "Model X",
	# 	price: 95990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_43_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IWW00_false_RIMCLOSEUP.jpg")
	# car_x_43.photo.attach(io: car_x_43_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IWW00_false_RIMCLOSEUP.jpg")

	# car_x_44 = Product.create!(
	# 	name: "Model X",
	# 	price: 95990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_44_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IWW00_false_INTERIOR.jpg")
	# car_x_44.photo.attach(io: car_x_44_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IWW00_false_INTERIOR.jpg")

	# car_x_45 = Product.create!(
	# 	name: "Model X",
	# 	price: 105990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_45_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IWW00_true_FRONT34.jpg")
	# car_x_45.photo.attach(io: car_x_45_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IWW00_true_FRONT34.jpg")

	# car_x_46 = Product.create!(
	# 	name: "Model X",
	# 	price: 105990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_46_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IWW00_true_SIDE.jpg")
	# car_x_46.photo.attach(io: car_x_46_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IWW00_true_SIDE.jpg")

	# car_x_47 = Product.create!(
	# 	name: "Model X",
	# 	price: 105990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_47_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IWW00_true_REAR34.jpg")
	# car_x_47.photo.attach(io: car_x_47_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IWW00_true_REAR34.jpg")

	# car_x_48 = Product.create!(
	# 	name: "Model X",
	# 	price: 105990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_48_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IWW00_true_RIMCLOSEUP.jpg")
	# car_x_48.photo.attach(io: car_x_48_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IWW00_true_RIMCLOSEUP.jpg")

	# car_x_49 = Product.create!(
	# 	name: "Model X",
	# 	price: 105990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_49_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$IWW00_true_INTERIOR.jpg")
	# car_x_49.photo.attach(io: car_x_49_file, filename: "model_x_$MTX10_$PPSW_$WX20_$IWW00_true_INTERIOR.jpg")

	# car_x_50 = Product.create!(
	# 	name: "Model X",
	# 	price: 95990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_50_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$ICW00_false_FRONT34.jpg")
	# car_x_50.photo.attach(io: car_x_50_file, filename: "model_x_$MTX10_$PPSW_$WX20_$ICW00_false_FRONT34.jpg")

	# car_x_51 = Product.create!(
	# 	name: "Model X",
	# 	price: 95990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_51_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$ICW00_false_SIDE.jpg")
	# car_x_51.photo.attach(io: car_x_51_file, filename: "model_x_$MTX10_$PPSW_$WX20_$ICW00_false_SIDE.jpg")

	# car_x_52 = Product.create!(
	# 	name: "Model X",
	# 	price: 95990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_52_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$ICW00_false_REAR34.jpg")
	# car_x_52.photo.attach(io: car_x_52_file, filename: "model_x_$MTX10_$PPSW_$WX20_$ICW00_false_REAR34.jpg")

	# car_x_53 = Product.create!(
	# 	name: "Model X",
	# 	price: 95990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_53_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$ICW00_false_RIMCLOSEUP.jpg")
	# car_x_53.photo.attach(io: car_x_53_file, filename: "model_x_$MTX10_$PPSW_$WX20_$ICW00_false_RIMCLOSEUP.jpg")

	# car_x_54 = Product.create!(
	# 	name: "Model X",
	# 	price: 95990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_54_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$ICW00_false_INTERIOR.jpg")
	# car_x_54.photo.attach(io: car_x_54_file, filename: "model_x_$MTX10_$PPSW_$WX20_$ICW00_false_INTERIOR.jpg")

	# car_x_55 = Product.create!(
	# 	name: "Model X",
	# 	price: 105990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_55_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$ICW00_true_FRONT34.jpg")
	# car_x_55.photo.attach(io: car_x_55_file, filename: "model_x_$MTX10_$PPSW_$WX20_$ICW00_true_FRONT34.jpg")

	# car_x_56 = Product.create!(
	# 	name: "Model X",
	# 	price: 105990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_56_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$ICW00_true_SIDE.jpg")
	# car_x_56.photo.attach(io: car_x_56_file, filename: "model_x_$MTX10_$PPSW_$WX20_$ICW00_true_SIDE.jpg")

	# car_x_57 = Product.create!(
	# 	name: "Model X",
	# 	price: 105990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_57_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$ICW00_true_REAR34.jpg")
	# car_x_57.photo.attach(io: car_x_57_file, filename: "model_x_$MTX10_$PPSW_$WX20_$ICW00_true_REAR34.jpg")

	# car_x_58 = Product.create!(
	# 	name: "Model X",
	# 	price: 105990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_58_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$ICW00_true_RIMCLOSEUP.jpg")
	# car_x_58.photo.attach(io: car_x_58_file, filename: "model_x_$MTX10_$PPSW_$WX20_$ICW00_true_RIMCLOSEUP.jpg")

	# car_x_59 = Product.create!(
	# 	name: "Model X",
	# 	price: 105990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_59_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSW_$WX20_$ICW00_true_INTERIOR.jpg")
	# car_x_59.photo.attach(io: car_x_59_file, filename: "model_x_$MTX10_$PPSW_$WX20_$ICW00_true_INTERIOR.jpg")

	# car_x_60 = Product.create!(
	# 	name: "Model X",
	# 	price: 89990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_60_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IBE00_false_FRONT34.jpg")
	# car_x_60.photo.attach(io: car_x_60_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IBE00_false_FRONT34.jpg")

	# car_x_61 = Product.create!(
	# 	name: "Model X",
	# 	price: 89990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_61_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IBE00_false_SIDE.jpg")
	# car_x_61.photo.attach(io: car_x_61_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IBE00_false_SIDE.jpg")

	# car_x_62 = Product.create!(
	# 	name: "Model X",
	# 	price: 89990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_62_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IBE00_false_REAR34.jpg")
	# car_x_62.photo.attach(io: car_x_62_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IBE00_false_REAR34.jpg")

	# car_x_63 = Product.create!(
	# 	name: "Model X",
	# 	price: 89990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_63_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IBE00_false_RIMCLOSEUP.jpg")
	# car_x_63.photo.attach(io: car_x_63_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IBE00_false_RIMCLOSEUP.jpg")

	# car_x_64 = Product.create!(
	# 	name: "Model X",
	# 	price: 89990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_64_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IBE00_false_INTERIOR.jpg")
	# car_x_64.photo.attach(io: car_x_64_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IBE00_false_INTERIOR.jpg")

	# car_x_65 = Product.create!(
	# 	name: "Model X",
	# 	price: 99990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_65_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IBE00_true_FRONT34.jpg")
	# car_x_65.photo.attach(io: car_x_65_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IBE00_true_FRONT34.jpg")

	# car_x_66 = Product.create!(
	# 	name: "Model X",
	# 	price: 99990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_66_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IBE00_true_SIDE.jpg")
	# car_x_66.photo.attach(io: car_x_66_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IBE00_true_SIDE.jpg")

	# car_x_67 = Product.create!(
	# 	name: "Model X",
	# 	price: 99990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_67_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IBE00_true_REAR34.jpg")
	# car_x_67.photo.attach(io: car_x_67_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IBE00_true_REAR34.jpg")

	# car_x_68 = Product.create!(
	# 	name: "Model X",
	# 	price: 99990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_68_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IBE00_true_RIMCLOSEUP.jpg")
	# car_x_68.photo.attach(io: car_x_68_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IBE00_true_RIMCLOSEUP.jpg")

	# car_x_69 = Product.create!(
	# 	name: "Model X",
	# 	price: 99990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_69_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IBE00_true_INTERIOR.jpg")
	# car_x_69.photo.attach(io: car_x_69_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IBE00_true_INTERIOR.jpg")

	# car_x_70 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_70_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IWW00_false_FRONT34.jpg")
	# car_x_70.photo.attach(io: car_x_70_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IWW00_false_FRONT34.jpg")

	# car_x_71 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_71_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IWW00_false_SIDE.jpg")
	# car_x_71.photo.attach(io: car_x_71_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IWW00_false_SIDE.jpg")

	# car_x_72 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_72_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IWW00_false_REAR34.jpg")
	# car_x_72.photo.attach(io: car_x_72_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IWW00_false_REAR34.jpg")

	# car_x_73 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_73_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IWW00_false_RIMCLOSEUP.jpg")
	# car_x_73.photo.attach(io: car_x_73_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IWW00_false_RIMCLOSEUP.jpg")

	# car_x_74 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_74_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IWW00_false_INTERIOR.jpg")
	# car_x_74.photo.attach(io: car_x_74_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IWW00_false_INTERIOR.jpg")

	# car_x_75 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_75_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IWW00_true_FRONT34.jpg")
	# car_x_75.photo.attach(io: car_x_75_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IWW00_true_FRONT34.jpg")

	# car_x_76 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_76_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IWW00_true_SIDE.jpg")
	# car_x_76.photo.attach(io: car_x_76_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IWW00_true_SIDE.jpg")

	# car_x_77 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_77_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IWW00_true_REAR34.jpg")
	# car_x_77.photo.attach(io: car_x_77_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IWW00_true_REAR34.jpg")

	# car_x_78 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_78_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IWW00_true_RIMCLOSEUP.jpg")
	# car_x_78.photo.attach(io: car_x_78_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IWW00_true_RIMCLOSEUP.jpg")

	# car_x_79 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_79_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$IWW00_true_INTERIOR.jpg")
	# car_x_79.photo.attach(io: car_x_79_file, filename: "model_x_$MTX10_$PBSB_$WX00_$IWW00_true_INTERIOR.jpg")

	# car_x_80 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_80_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$ICW00_false_FRONT34.jpg")
	# car_x_80.photo.attach(io: car_x_80_file, filename: "model_x_$MTX10_$PBSB_$WX00_$ICW00_false_FRONT34.jpg")

	# car_x_81 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_81_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$ICW00_false_SIDE.jpg")
	# car_x_81.photo.attach(io: car_x_81_file, filename: "model_x_$MTX10_$PBSB_$WX00_$ICW00_false_SIDE.jpg")

	# car_x_82 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_82_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$ICW00_false_REAR34.jpg")
	# car_x_82.photo.attach(io: car_x_82_file, filename: "model_x_$MTX10_$PBSB_$WX00_$ICW00_false_REAR34.jpg")

	# car_x_83 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_83_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$ICW00_false_RIMCLOSEUP.jpg")
	# car_x_83.photo.attach(io: car_x_83_file, filename: "model_x_$MTX10_$PBSB_$WX00_$ICW00_false_RIMCLOSEUP.jpg")

	# car_x_84 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_84_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$ICW00_false_INTERIOR.jpg")
	# car_x_84.photo.attach(io: car_x_84_file, filename: "model_x_$MTX10_$PBSB_$WX00_$ICW00_false_INTERIOR.jpg")

	# car_x_85 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_85_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$ICW00_true_FRONT34.jpg")
	# car_x_85.photo.attach(io: car_x_85_file, filename: "model_x_$MTX10_$PBSB_$WX00_$ICW00_true_FRONT34.jpg")

	# car_x_86 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_86_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$ICW00_true_SIDE.jpg")
	# car_x_86.photo.attach(io: car_x_86_file, filename: "model_x_$MTX10_$PBSB_$WX00_$ICW00_true_SIDE.jpg")

	# car_x_87 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_87_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$ICW00_true_REAR34.jpg")
	# car_x_87.photo.attach(io: car_x_87_file, filename: "model_x_$MTX10_$PBSB_$WX00_$ICW00_true_REAR34.jpg")

	# car_x_88 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_88_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$ICW00_true_RIMCLOSEUP.jpg")
	# car_x_88.photo.attach(io: car_x_88_file, filename: "model_x_$MTX10_$PBSB_$WX00_$ICW00_true_RIMCLOSEUP.jpg")

	# car_x_89 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_89_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX00_$ICW00_true_INTERIOR.jpg")
	# car_x_89.photo.attach(io: car_x_89_file, filename: "model_x_$MTX10_$PBSB_$WX00_$ICW00_true_INTERIOR.jpg")

	# car_x_90 = Product.create!(
	# 	name: "Model X",
	# 	price: 95490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_90_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IBE00_false_FRONT34.jpg")
	# car_x_90.photo.attach(io: car_x_90_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IBE00_false_FRONT34.jpg")

	# car_x_91 = Product.create!(
	# 	name: "Model X",
	# 	price: 95490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_91_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IBE00_false_SIDE.jpg")
	# car_x_91.photo.attach(io: car_x_91_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IBE00_false_SIDE.jpg")

	# car_x_92 = Product.create!(
	# 	name: "Model X",
	# 	price: 95490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_92_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IBE00_false_REAR34.jpg")
	# car_x_92.photo.attach(io: car_x_92_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IBE00_false_REAR34.jpg")

	# car_x_93 = Product.create!(
	# 	name: "Model X",
	# 	price: 95490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_93_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IBE00_false_RIMCLOSEUP.jpg")
	# car_x_93.photo.attach(io: car_x_93_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IBE00_false_RIMCLOSEUP.jpg")

	# car_x_94 = Product.create!(
	# 	name: "Model X",
	# 	price: 95490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_94_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IBE00_false_INTERIOR.jpg")
	# car_x_94.photo.attach(io: car_x_94_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IBE00_false_INTERIOR.jpg")

	# car_x_95 = Product.create!(
	# 	name: "Model X",
	# 	price: 105490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_95_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IBE00_true_FRONT34.jpg")
	# car_x_95.photo.attach(io: car_x_95_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IBE00_true_FRONT34.jpg")

	# car_x_96 = Product.create!(
	# 	name: "Model X",
	# 	price: 105490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_96_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IBE00_true_SIDE.jpg")
	# car_x_96.photo.attach(io: car_x_96_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IBE00_true_SIDE.jpg")

	# car_x_97 = Product.create!(
	# 	name: "Model X",
	# 	price: 105490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_97_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IBE00_true_REAR34.jpg")
	# car_x_97.photo.attach(io: car_x_97_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IBE00_true_REAR34.jpg")

	# car_x_98 = Product.create!(
	# 	name: "Model X",
	# 	price: 105490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_98_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IBE00_true_RIMCLOSEUP.jpg")
	# car_x_98.photo.attach(io: car_x_98_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IBE00_true_RIMCLOSEUP.jpg")

	# car_x_99 = Product.create!(
	# 	name: "Model X",
	# 	price: 105490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_99_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IBE00_true_INTERIOR.jpg")
	# car_x_99.photo.attach(io: car_x_99_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IBE00_true_INTERIOR.jpg")

	# car_x_100 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_100_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IWW00_false_FRONT34.jpg")
	# car_x_100.photo.attach(io: car_x_100_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IWW00_false_FRONT34.jpg")

	# puts "Creating Model X_1..."

	# car_x_101 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_101_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IWW00_false_SIDE.jpg")
	# car_x_101.photo.attach(io: car_x_101_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IWW00_false_SIDE.jpg")

	# car_x_102 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_102_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IWW00_false_REAR34.jpg")
	# car_x_102.photo.attach(io: car_x_102_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IWW00_false_REAR34.jpg")

	# car_x_103 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_103_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IWW00_false_RIMCLOSEUP.jpg")
	# car_x_103.photo.attach(io: car_x_103_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IWW00_false_RIMCLOSEUP.jpg")

	# car_x_104 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_104_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IWW00_false_INTERIOR.jpg")
	# car_x_104.photo.attach(io: car_x_104_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IWW00_false_INTERIOR.jpg")

	# car_x_105 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_105_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IWW00_true_FRONT34.jpg")
	# car_x_105.photo.attach(io: car_x_105_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IWW00_true_FRONT34.jpg")

	# car_x_106 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_106_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IWW00_true_SIDE.jpg")
	# car_x_106.photo.attach(io: car_x_106_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IWW00_true_SIDE.jpg")

	# car_x_107 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_107_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IWW00_true_REAR34.jpg")
	# car_x_107.photo.attach(io: car_x_107_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IWW00_true_REAR34.jpg")

	# car_x_108 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_108_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IWW00_true_RIMCLOSEUP.jpg")
	# car_x_108.photo.attach(io: car_x_108_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IWW00_true_RIMCLOSEUP.jpg")

	# car_x_109 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_109_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$IWW00_true_INTERIOR.jpg")
	# car_x_109.photo.attach(io: car_x_109_file, filename: "model_x_$MTX10_$PBSB_$WX20_$IWW00_true_INTERIOR.jpg")

	# car_x_110 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_110_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$ICW00_false_FRONT34.jpg")
	# car_x_110.photo.attach(io: car_x_110_file, filename: "model_x_$MTX10_$PBSB_$WX20_$ICW00_false_FRONT34.jpg")

	# car_x_111 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_111_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$ICW00_false_SIDE.jpg")
	# car_x_111.photo.attach(io: car_x_111_file, filename: "model_x_$MTX10_$PBSB_$WX20_$ICW00_false_SIDE.jpg")

	# car_x_112 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_112_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$ICW00_false_REAR34.jpg")
	# car_x_112.photo.attach(io: car_x_112_file, filename: "model_x_$MTX10_$PBSB_$WX20_$ICW00_false_REAR34.jpg")

	# car_x_113 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_113_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$ICW00_false_RIMCLOSEUP.jpg")
	# car_x_113.photo.attach(io: car_x_113_file, filename: "model_x_$MTX10_$PBSB_$WX20_$ICW00_false_RIMCLOSEUP.jpg")

	# car_x_114 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_114_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$ICW00_false_INTERIOR.jpg")
	# car_x_114.photo.attach(io: car_x_114_file, filename: "model_x_$MTX10_$PBSB_$WX20_$ICW00_false_INTERIOR.jpg")

	# car_x_115 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_115_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$ICW00_true_FRONT34.jpg")
	# car_x_115.photo.attach(io: car_x_115_file, filename: "model_x_$MTX10_$PBSB_$WX20_$ICW00_true_FRONT34.jpg")

	# car_x_116 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_116_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$ICW00_true_SIDE.jpg")
	# car_x_116.photo.attach(io: car_x_116_file, filename: "model_x_$MTX10_$PBSB_$WX20_$ICW00_true_SIDE.jpg")

	# car_x_117 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_117_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$ICW00_true_REAR34.jpg")
	# car_x_117.photo.attach(io: car_x_117_file, filename: "model_x_$MTX10_$PBSB_$WX20_$ICW00_true_REAR34.jpg")

	# car_x_118 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_118_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$ICW00_true_RIMCLOSEUP.jpg")
	# car_x_118.photo.attach(io: car_x_118_file, filename: "model_x_$MTX10_$PBSB_$WX20_$ICW00_true_RIMCLOSEUP.jpg")

	# car_x_119 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Solid Black",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_119_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PBSB_$WX20_$ICW00_true_INTERIOR.jpg")
	# car_x_119.photo.attach(io: car_x_119_file, filename: "model_x_$MTX10_$PBSB_$WX20_$ICW00_true_INTERIOR.jpg")

	# car_x_120 = Product.create!(
	# 	name: "Model X",
	# 	price: 89990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_120_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IBE00_false_FRONT34.jpg")
	# car_x_120.photo.attach(io: car_x_120_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IBE00_false_FRONT34.jpg")

	# car_x_121 = Product.create!(
	# 	name: "Model X",
	# 	price: 89990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_121_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IBE00_false_SIDE.jpg")
	# car_x_121.photo.attach(io: car_x_121_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IBE00_false_SIDE.jpg")

	# car_x_122 = Product.create!(
	# 	name: "Model X",
	# 	price: 89990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_122_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IBE00_false_REAR34.jpg")
	# car_x_122.photo.attach(io: car_x_122_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IBE00_false_REAR34.jpg")

	# car_x_123 = Product.create!(
	# 	name: "Model X",
	# 	price: 89990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_123_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IBE00_false_RIMCLOSEUP.jpg")
	# car_x_123.photo.attach(io: car_x_123_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IBE00_false_RIMCLOSEUP.jpg")

	# car_x_124 = Product.create!(
	# 	name: "Model X",
	# 	price: 89990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_124_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IBE00_false_INTERIOR.jpg")
	# car_x_124.photo.attach(io: car_x_124_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IBE00_false_INTERIOR.jpg")

	# car_x_125 = Product.create!(
	# 	name: "Model X",
	# 	price: 99990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_125_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IBE00_true_FRONT34.jpg")
	# car_x_125.photo.attach(io: car_x_125_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IBE00_true_FRONT34.jpg")

	# car_x_126 = Product.create!(
	# 	name: "Model X",
	# 	price: 99990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_126_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IBE00_true_SIDE.jpg")
	# car_x_126.photo.attach(io: car_x_126_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IBE00_true_SIDE.jpg")

	# car_x_127 = Product.create!(
	# 	name: "Model X",
	# 	price: 99990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_127_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IBE00_true_REAR34.jpg")
	# car_x_127.photo.attach(io: car_x_127_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IBE00_true_REAR34.jpg")

	# car_x_128 = Product.create!(
	# 	name: "Model X",
	# 	price: 99990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_128_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IBE00_true_RIMCLOSEUP.jpg")
	# car_x_128.photo.attach(io: car_x_128_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IBE00_true_RIMCLOSEUP.jpg")

	# car_x_129 = Product.create!(
	# 	name: "Model X",
	# 	price: 99990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_129_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IBE00_true_INTERIOR.jpg")
	# car_x_129.photo.attach(io: car_x_129_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IBE00_true_INTERIOR.jpg")

	# car_x_130 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_130_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IWW00_false_FRONT34.jpg")
	# car_x_130.photo.attach(io: car_x_130_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IWW00_false_FRONT34.jpg")

	# car_x_131 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_131_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IWW00_false_SIDE.jpg")
	# car_x_131.photo.attach(io: car_x_131_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IWW00_false_SIDE.jpg")

	# car_x_132 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_132_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IWW00_false_REAR34.jpg")
	# car_x_132.photo.attach(io: car_x_132_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IWW00_false_REAR34.jpg")

	# car_x_133 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_133_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IWW00_false_RIMCLOSEUP.jpg")
	# car_x_133.photo.attach(io: car_x_133_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IWW00_false_RIMCLOSEUP.jpg")

	# car_x_134 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_134_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IWW00_false_INTERIOR.jpg")
	# car_x_134.photo.attach(io: car_x_134_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IWW00_false_INTERIOR.jpg")

	# car_x_135 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_135_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IWW00_true_FRONT34.jpg")
	# car_x_135.photo.attach(io: car_x_135_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IWW00_true_FRONT34.jpg")

	# car_x_136 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_136_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IWW00_true_SIDE.jpg")
	# car_x_136.photo.attach(io: car_x_136_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IWW00_true_SIDE.jpg")

	# car_x_137 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_137_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IWW00_true_REAR34.jpg")
	# car_x_137.photo.attach(io: car_x_137_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IWW00_true_REAR34.jpg")

	# car_x_138 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_138_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IWW00_true_RIMCLOSEUP.jpg")
	# car_x_138.photo.attach(io: car_x_138_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IWW00_true_RIMCLOSEUP.jpg")

	# car_x_139 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_139_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$IWW00_true_INTERIOR.jpg")
	# car_x_139.photo.attach(io: car_x_139_file, filename: "model_x_$MTX10_$PMNG_$WX00_$IWW00_true_INTERIOR.jpg")

	# car_x_140 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_140_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$ICW00_false_FRONT34.jpg")
	# car_x_140.photo.attach(io: car_x_140_file, filename: "model_x_$MTX10_$PMNG_$WX00_$ICW00_false_FRONT34.jpg")

	# car_x_141 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_141_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$ICW00_false_SIDE.jpg")
	# car_x_141.photo.attach(io: car_x_141_file, filename: "model_x_$MTX10_$PMNG_$WX00_$ICW00_false_SIDE.jpg")

	# car_x_142 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_142_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$ICW00_false_REAR34.jpg")
	# car_x_142.photo.attach(io: car_x_142_file, filename: "model_x_$MTX10_$PMNG_$WX00_$ICW00_false_REAR34.jpg")

	# car_x_143 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_143_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$ICW00_false_RIMCLOSEUP.jpg")
	# car_x_143.photo.attach(io: car_x_143_file, filename: "model_x_$MTX10_$PMNG_$WX00_$ICW00_false_RIMCLOSEUP.jpg")

	# car_x_144 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_144_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$ICW00_false_INTERIOR.jpg")
	# car_x_144.photo.attach(io: car_x_144_file, filename: "model_x_$MTX10_$PMNG_$WX00_$ICW00_false_INTERIOR.jpg")

	# car_x_145 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_145_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$ICW00_true_FRONT34.jpg")
	# car_x_145.photo.attach(io: car_x_145_file, filename: "model_x_$MTX10_$PMNG_$WX00_$ICW00_true_FRONT34.jpg")

	# car_x_146 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_146_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$ICW00_true_SIDE.jpg")
	# car_x_146.photo.attach(io: car_x_146_file, filename: "model_x_$MTX10_$PMNG_$WX00_$ICW00_true_SIDE.jpg")

	# car_x_147 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_147_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$ICW00_true_REAR34.jpg")
	# car_x_147.photo.attach(io: car_x_147_file, filename: "model_x_$MTX10_$PMNG_$WX00_$ICW00_true_REAR34.jpg")

	# car_x_148 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_148_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$ICW00_true_RIMCLOSEUP.jpg")
	# car_x_148.photo.attach(io: car_x_148_file, filename: "model_x_$MTX10_$PMNG_$WX00_$ICW00_true_RIMCLOSEUP.jpg")

	# car_x_149 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_149_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX00_$ICW00_true_INTERIOR.jpg")
	# car_x_149.photo.attach(io: car_x_149_file, filename: "model_x_$MTX10_$PMNG_$WX00_$ICW00_true_INTERIOR.jpg")

	# car_x_150 = Product.create!(
	# 	name: "Model X",
	# 	price: 95490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_150_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IBE00_false_FRONT34.jpg")
	# car_x_150.photo.attach(io: car_x_150_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IBE00_false_FRONT34.jpg")

	# car_x_151 = Product.create!(
	# 	name: "Model X",
	# 	price: 95490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_151_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IBE00_false_SIDE.jpg")
	# car_x_151.photo.attach(io: car_x_151_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IBE00_false_SIDE.jpg")

	# car_x_152 = Product.create!(
	# 	name: "Model X",
	# 	price: 95490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_152_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IBE00_false_REAR34.jpg")
	# car_x_152.photo.attach(io: car_x_152_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IBE00_false_REAR34.jpg")

	# car_x_153 = Product.create!(
	# 	name: "Model X",
	# 	price: 95490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_153_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IBE00_false_RIMCLOSEUP.jpg")
	# car_x_153.photo.attach(io: car_x_153_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IBE00_false_RIMCLOSEUP.jpg")

	# car_x_154 = Product.create!(
	# 	name: "Model X",
	# 	price: 95490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_154_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IBE00_false_INTERIOR.jpg")
	# car_x_154.photo.attach(io: car_x_154_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IBE00_false_INTERIOR.jpg")

	# car_x_155 = Product.create!(
	# 	name: "Model X",
	# 	price: 105490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_155_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IBE00_true_FRONT34.jpg")
	# car_x_155.photo.attach(io: car_x_155_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IBE00_true_FRONT34.jpg")

	# car_x_156 = Product.create!(
	# 	name: "Model X",
	# 	price: 105490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_156_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IBE00_true_SIDE.jpg")
	# car_x_156.photo.attach(io: car_x_156_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IBE00_true_SIDE.jpg")

	# car_x_157 = Product.create!(
	# 	name: "Model X",
	# 	price: 105490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_157_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IBE00_true_REAR34.jpg")
	# car_x_157.photo.attach(io: car_x_157_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IBE00_true_REAR34.jpg")

	# car_x_158 = Product.create!(
	# 	name: "Model X",
	# 	price: 105490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_158_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IBE00_true_RIMCLOSEUP.jpg")
	# car_x_158.photo.attach(io: car_x_158_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IBE00_true_RIMCLOSEUP.jpg")

	# car_x_159 = Product.create!(
	# 	name: "Model X",
	# 	price: 105490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_159_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IBE00_true_INTERIOR.jpg")
	# car_x_159.photo.attach(io: car_x_159_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IBE00_true_INTERIOR.jpg")

	# car_x_160 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_160_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IWW00_false_FRONT34.jpg")
	# car_x_160.photo.attach(io: car_x_160_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IWW00_false_FRONT34.jpg")

	# car_x_161 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_161_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IWW00_false_SIDE.jpg")
	# car_x_161.photo.attach(io: car_x_161_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IWW00_false_SIDE.jpg")

	# car_x_162 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_162_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IWW00_false_REAR34.jpg")
	# car_x_162.photo.attach(io: car_x_162_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IWW00_false_REAR34.jpg")

	# car_x_163 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_163_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IWW00_false_RIMCLOSEUP.jpg")
	# car_x_163.photo.attach(io: car_x_163_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IWW00_false_RIMCLOSEUP.jpg")

	# car_x_164 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_164_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IWW00_false_INTERIOR.jpg")
	# car_x_164.photo.attach(io: car_x_164_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IWW00_false_INTERIOR.jpg")

	# car_x_165 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_165_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IWW00_true_FRONT34.jpg")
	# car_x_165.photo.attach(io: car_x_165_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IWW00_true_FRONT34.jpg")

	# car_x_166 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_166_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IWW00_true_SIDE.jpg")
	# car_x_166.photo.attach(io: car_x_166_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IWW00_true_SIDE.jpg")

	# car_x_167 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_167_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IWW00_true_REAR34.jpg")
	# car_x_167.photo.attach(io: car_x_167_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IWW00_true_REAR34.jpg")

	# car_x_168 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_168_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IWW00_true_RIMCLOSEUP.jpg")
	# car_x_168.photo.attach(io: car_x_168_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IWW00_true_RIMCLOSEUP.jpg")

	# car_x_169 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_169_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$IWW00_true_INTERIOR.jpg")
	# car_x_169.photo.attach(io: car_x_169_file, filename: "model_x_$MTX10_$PMNG_$WX20_$IWW00_true_INTERIOR.jpg")

	# car_x_170 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_170_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$ICW00_false_FRONT34.jpg")
	# car_x_170.photo.attach(io: car_x_170_file, filename: "model_x_$MTX10_$PMNG_$WX20_$ICW00_false_FRONT34.jpg")

	# car_x_171 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_171_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$ICW00_false_SIDE.jpg")
	# car_x_171.photo.attach(io: car_x_171_file, filename: "model_x_$MTX10_$PMNG_$WX20_$ICW00_false_SIDE.jpg")

	# car_x_172 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_172_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$ICW00_false_REAR34.jpg")
	# car_x_172.photo.attach(io: car_x_172_file, filename: "model_x_$MTX10_$PMNG_$WX20_$ICW00_false_REAR34.jpg")

	# car_x_173 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_173_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$ICW00_false_RIMCLOSEUP.jpg")
	# car_x_173.photo.attach(io: car_x_173_file, filename: "model_x_$MTX10_$PMNG_$WX20_$ICW00_false_RIMCLOSEUP.jpg")

	# car_x_174 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_174_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$ICW00_false_INTERIOR.jpg")
	# car_x_174.photo.attach(io: car_x_174_file, filename: "model_x_$MTX10_$PMNG_$WX20_$ICW00_false_INTERIOR.jpg")

	# car_x_175 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_175_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$ICW00_true_FRONT34.jpg")
	# car_x_175.photo.attach(io: car_x_175_file, filename: "model_x_$MTX10_$PMNG_$WX20_$ICW00_true_FRONT34.jpg")

	# car_x_176 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_176_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$ICW00_true_SIDE.jpg")
	# car_x_176.photo.attach(io: car_x_176_file, filename: "model_x_$MTX10_$PMNG_$WX20_$ICW00_true_SIDE.jpg")

	# car_x_177 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_177_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$ICW00_true_REAR34.jpg")
	# car_x_177.photo.attach(io: car_x_177_file, filename: "model_x_$MTX10_$PMNG_$WX20_$ICW00_true_REAR34.jpg")

	# car_x_178 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_178_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$ICW00_true_RIMCLOSEUP.jpg")
	# car_x_178.photo.attach(io: car_x_178_file, filename: "model_x_$MTX10_$PMNG_$WX20_$ICW00_true_RIMCLOSEUP.jpg")

	# car_x_179 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_179_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PMNG_$WX20_$ICW00_true_INTERIOR.jpg")
	# car_x_179.photo.attach(io: car_x_179_file, filename: "model_x_$MTX10_$PMNG_$WX20_$ICW00_true_INTERIOR.jpg")

	# car_x_180 = Product.create!(
	# 	name: "Model X",
	# 	price: 89990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_180_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IBE00_false_FRONT34.jpg")
	# car_x_180.photo.attach(io: car_x_180_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IBE00_false_FRONT34.jpg")

	# car_x_181 = Product.create!(
	# 	name: "Model X",
	# 	price: 89990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_181_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IBE00_false_SIDE.jpg")
	# car_x_181.photo.attach(io: car_x_181_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IBE00_false_SIDE.jpg")

	# car_x_182 = Product.create!(
	# 	name: "Model X",
	# 	price: 89990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_182_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IBE00_false_REAR34.jpg")
	# car_x_182.photo.attach(io: car_x_182_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IBE00_false_REAR34.jpg")

	# car_x_183 = Product.create!(
	# 	name: "Model X",
	# 	price: 89990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_183_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IBE00_false_RIMCLOSEUP.jpg")
	# car_x_183.photo.attach(io: car_x_183_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IBE00_false_RIMCLOSEUP.jpg")

	# car_x_184 = Product.create!(
	# 	name: "Model X",
	# 	price: 89990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_184_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IBE00_false_INTERIOR.jpg")
	# car_x_184.photo.attach(io: car_x_184_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IBE00_false_INTERIOR.jpg")

	# car_x_185 = Product.create!(
	# 	name: "Model X",
	# 	price: 99990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_185_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IBE00_true_FRONT34.jpg")
	# car_x_185.photo.attach(io: car_x_185_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IBE00_true_FRONT34.jpg")

	# car_x_186 = Product.create!(
	# 	name: "Model X",
	# 	price: 99990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_186_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IBE00_true_SIDE.jpg")
	# car_x_186.photo.attach(io: car_x_186_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IBE00_true_SIDE.jpg")

	# car_x_187 = Product.create!(
	# 	name: "Model X",
	# 	price: 99990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_187_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IBE00_true_REAR34.jpg")
	# car_x_187.photo.attach(io: car_x_187_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IBE00_true_REAR34.jpg")

	# car_x_188 = Product.create!(
	# 	name: "Model X",
	# 	price: 99990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_188_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IBE00_true_RIMCLOSEUP.jpg")
	# car_x_188.photo.attach(io: car_x_188_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IBE00_true_RIMCLOSEUP.jpg")

	# car_x_189 = Product.create!(
	# 	name: "Model X",
	# 	price: 99990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_189_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IBE00_true_INTERIOR.jpg")
	# car_x_189.photo.attach(io: car_x_189_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IBE00_true_INTERIOR.jpg")

	# car_x_190 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_190_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IWW00_false_FRONT34.jpg")
	# car_x_190.photo.attach(io: car_x_190_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IWW00_false_FRONT34.jpg")

	# car_x_191 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_191_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IWW00_false_SIDE.jpg")
	# car_x_191.photo.attach(io: car_x_191_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IWW00_false_SIDE.jpg")

	# car_x_192 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_192_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IWW00_false_REAR34.jpg")
	# car_x_192.photo.attach(io: car_x_192_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IWW00_false_REAR34.jpg")

	# car_x_193 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_193_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IWW00_false_RIMCLOSEUP.jpg")
	# car_x_193.photo.attach(io: car_x_193_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IWW00_false_RIMCLOSEUP.jpg")

	# car_x_194 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_194_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IWW00_false_INTERIOR.jpg")
	# car_x_194.photo.attach(io: car_x_194_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IWW00_false_INTERIOR.jpg")

	# car_x_195 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_195_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IWW00_true_FRONT34.jpg")
	# car_x_195.photo.attach(io: car_x_195_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IWW00_true_FRONT34.jpg")

	# car_x_196 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_196_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IWW00_true_SIDE.jpg")
	# car_x_196.photo.attach(io: car_x_196_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IWW00_true_SIDE.jpg")

	# car_x_197 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_197_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IWW00_true_REAR34.jpg")
	# car_x_197.photo.attach(io: car_x_197_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IWW00_true_REAR34.jpg")

	# car_x_198 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_198_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IWW00_true_RIMCLOSEUP.jpg")
	# car_x_198.photo.attach(io: car_x_198_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IWW00_true_RIMCLOSEUP.jpg")

	# car_x_199 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_199_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$IWW00_true_INTERIOR.jpg")
	# car_x_199.photo.attach(io: car_x_199_file, filename: "model_x_$MTX10_$PPSB_$WX00_$IWW00_true_INTERIOR.jpg")

	# car_x_200 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_200_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$ICW00_false_FRONT34.jpg")
	# car_x_200.photo.attach(io: car_x_200_file, filename: "model_x_$MTX10_$PPSB_$WX00_$ICW00_false_FRONT34.jpg")

	# puts "Creating Model X_2..."

	# car_x_201 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_201_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$ICW00_false_SIDE.jpg")
	# car_x_201.photo.attach(io: car_x_201_file, filename: "model_x_$MTX10_$PPSB_$WX00_$ICW00_false_SIDE.jpg")

	# car_x_202 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_202_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$ICW00_false_REAR34.jpg")
	# car_x_202.photo.attach(io: car_x_202_file, filename: "model_x_$MTX10_$PPSB_$WX00_$ICW00_false_REAR34.jpg")

	# car_x_203 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_203_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$ICW00_false_RIMCLOSEUP.jpg")
	# car_x_203.photo.attach(io: car_x_203_file, filename: "model_x_$MTX10_$PPSB_$WX00_$ICW00_false_RIMCLOSEUP.jpg")

	# car_x_204 = Product.create!(
	# 	name: "Model X",
	# 	price: 91990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_204_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$ICW00_false_INTERIOR.jpg")
	# car_x_204.photo.attach(io: car_x_204_file, filename: "model_x_$MTX10_$PPSB_$WX00_$ICW00_false_INTERIOR.jpg")

	# car_x_205 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_205_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$ICW00_true_FRONT34.jpg")
	# car_x_205.photo.attach(io: car_x_205_file, filename: "model_x_$MTX10_$PPSB_$WX00_$ICW00_true_FRONT34.jpg")

	# car_x_206 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_206_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$ICW00_true_SIDE.jpg")
	# car_x_206.photo.attach(io: car_x_206_file, filename: "model_x_$MTX10_$PPSB_$WX00_$ICW00_true_SIDE.jpg")

	# car_x_207 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_207_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$ICW00_true_REAR34.jpg")
	# car_x_207.photo.attach(io: car_x_207_file, filename: "model_x_$MTX10_$PPSB_$WX00_$ICW00_true_REAR34.jpg")

	# car_x_208 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_208_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$ICW00_true_RIMCLOSEUP.jpg")
	# car_x_208.photo.attach(io: car_x_208_file, filename: "model_x_$MTX10_$PPSB_$WX00_$ICW00_true_RIMCLOSEUP.jpg")

	# car_x_209 = Product.create!(
	# 	name: "Model X",
	# 	price: 101990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_209_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX00_$ICW00_true_INTERIOR.jpg")
	# car_x_209.photo.attach(io: car_x_209_file, filename: "model_x_$MTX10_$PPSB_$WX00_$ICW00_true_INTERIOR.jpg")

	# car_x_210 = Product.create!(
	# 	name: "Model X",
	# 	price: 95490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_210_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IBE00_false_FRONT34.jpg")
	# car_x_210.photo.attach(io: car_x_210_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IBE00_false_FRONT34.jpg")

	# car_x_211 = Product.create!(
	# 	name: "Model X",
	# 	price: 95490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_211_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IBE00_false_SIDE.jpg")
	# car_x_211.photo.attach(io: car_x_211_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IBE00_false_SIDE.jpg")

	# car_x_212 = Product.create!(
	# 	name: "Model X",
	# 	price: 95490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_212_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IBE00_false_REAR34.jpg")
	# car_x_212.photo.attach(io: car_x_212_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IBE00_false_REAR34.jpg")

	# car_x_213 = Product.create!(
	# 	name: "Model X",
	# 	price: 95490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_213_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IBE00_false_RIMCLOSEUP.jpg")
	# car_x_213.photo.attach(io: car_x_213_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IBE00_false_RIMCLOSEUP.jpg")

	# car_x_214 = Product.create!(
	# 	name: "Model X",
	# 	price: 95490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_214_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IBE00_false_INTERIOR.jpg")
	# car_x_214.photo.attach(io: car_x_214_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IBE00_false_INTERIOR.jpg")

	# car_x_215 = Product.create!(
	# 	name: "Model X",
	# 	price: 105490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_215_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IBE00_true_FRONT34.jpg")
	# car_x_215.photo.attach(io: car_x_215_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IBE00_true_FRONT34.jpg")

	# car_x_216 = Product.create!(
	# 	name: "Model X",
	# 	price: 105490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_216_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IBE00_true_SIDE.jpg")
	# car_x_216.photo.attach(io: car_x_216_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IBE00_true_SIDE.jpg")

	# car_x_217 = Product.create!(
	# 	name: "Model X",
	# 	price: 105490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_217_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IBE00_true_REAR34.jpg")
	# car_x_217.photo.attach(io: car_x_217_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IBE00_true_REAR34.jpg")

	# car_x_218 = Product.create!(
	# 	name: "Model X",
	# 	price: 105490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_218_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IBE00_true_RIMCLOSEUP.jpg")
	# car_x_218.photo.attach(io: car_x_218_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IBE00_true_RIMCLOSEUP.jpg")

	# car_x_219 = Product.create!(
	# 	name: "Model X",
	# 	price: 105490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_219_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IBE00_true_INTERIOR.jpg")
	# car_x_219.photo.attach(io: car_x_219_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IBE00_true_INTERIOR.jpg")

	# car_x_220 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_220_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IWW00_false_FRONT34.jpg")
	# car_x_220.photo.attach(io: car_x_220_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IWW00_false_FRONT34.jpg")

	# car_x_221 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_221_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IWW00_false_SIDE.jpg")
	# car_x_221.photo.attach(io: car_x_221_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IWW00_false_SIDE.jpg")

	# car_x_222 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_222_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IWW00_false_REAR34.jpg")
	# car_x_222.photo.attach(io: car_x_222_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IWW00_false_REAR34.jpg")

	# car_x_223 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_223_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IWW00_false_RIMCLOSEUP.jpg")
	# car_x_223.photo.attach(io: car_x_223_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IWW00_false_RIMCLOSEUP.jpg")

	# car_x_224 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_224_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IWW00_false_INTERIOR.jpg")
	# car_x_224.photo.attach(io: car_x_224_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IWW00_false_INTERIOR.jpg")

	# car_x_225 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_225_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IWW00_true_FRONT34.jpg")
	# car_x_225.photo.attach(io: car_x_225_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IWW00_true_FRONT34.jpg")

	# car_x_226 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_226_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IWW00_true_SIDE.jpg")
	# car_x_226.photo.attach(io: car_x_226_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IWW00_true_SIDE.jpg")

	# car_x_227 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_227_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IWW00_true_REAR34.jpg")
	# car_x_227.photo.attach(io: car_x_227_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IWW00_true_REAR34.jpg")

	# car_x_228 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_228_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IWW00_true_RIMCLOSEUP.jpg")
	# car_x_228.photo.attach(io: car_x_228_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IWW00_true_RIMCLOSEUP.jpg")

	# car_x_229 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_229_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$IWW00_true_INTERIOR.jpg")
	# car_x_229.photo.attach(io: car_x_229_file, filename: "model_x_$MTX10_$PPSB_$WX20_$IWW00_true_INTERIOR.jpg")

	# car_x_230 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_230_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$ICW00_false_FRONT34.jpg")
	# car_x_230.photo.attach(io: car_x_230_file, filename: "model_x_$MTX10_$PPSB_$WX20_$ICW00_false_FRONT34.jpg")

	# car_x_231 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_231_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$ICW00_false_SIDE.jpg")
	# car_x_231.photo.attach(io: car_x_231_file, filename: "model_x_$MTX10_$PPSB_$WX20_$ICW00_false_SIDE.jpg")

	# car_x_232 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_232_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$ICW00_false_REAR34.jpg")
	# car_x_232.photo.attach(io: car_x_232_file, filename: "model_x_$MTX10_$PPSB_$WX20_$ICW00_false_REAR34.jpg")

	# car_x_233 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_233_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$ICW00_false_RIMCLOSEUP.jpg")
	# car_x_233.photo.attach(io: car_x_233_file, filename: "model_x_$MTX10_$PPSB_$WX20_$ICW00_false_RIMCLOSEUP.jpg")

	# car_x_234 = Product.create!(
	# 	name: "Model X",
	# 	price: 97490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_234_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$ICW00_false_INTERIOR.jpg")
	# car_x_234.photo.attach(io: car_x_234_file, filename: "model_x_$MTX10_$PPSB_$WX20_$ICW00_false_INTERIOR.jpg")

	# car_x_235 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_235_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$ICW00_true_FRONT34.jpg")
	# car_x_235.photo.attach(io: car_x_235_file, filename: "model_x_$MTX10_$PPSB_$WX20_$ICW00_true_FRONT34.jpg")

	# car_x_236 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_236_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$ICW00_true_SIDE.jpg")
	# car_x_236.photo.attach(io: car_x_236_file, filename: "model_x_$MTX10_$PPSB_$WX20_$ICW00_true_SIDE.jpg")

	# car_x_237 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_237_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$ICW00_true_REAR34.jpg")
	# car_x_237.photo.attach(io: car_x_237_file, filename: "model_x_$MTX10_$PPSB_$WX20_$ICW00_true_REAR34.jpg")

	# car_x_238 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_238_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$ICW00_true_RIMCLOSEUP.jpg")
	# car_x_238.photo.attach(io: car_x_238_file, filename: "model_x_$MTX10_$PPSB_$WX20_$ICW00_true_RIMCLOSEUP.jpg")

	# car_x_239 = Product.create!(
	# 	name: "Model X",
	# 	price: 107490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_239_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPSB_$WX20_$ICW00_true_INTERIOR.jpg")
	# car_x_239.photo.attach(io: car_x_239_file, filename: "model_x_$MTX10_$PPSB_$WX20_$ICW00_true_INTERIOR.jpg")

	# car_x_240 = Product.create!(
	# 	name: "Model X",
	# 	price: 90990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_240_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IBE00_false_FRONT34.jpg")
	# car_x_240.photo.attach(io: car_x_240_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IBE00_false_FRONT34.jpg")

	# car_x_241 = Product.create!(
	# 	name: "Model X",
	# 	price: 90990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_241_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IBE00_false_SIDE.jpg")
	# car_x_241.photo.attach(io: car_x_241_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IBE00_false_SIDE.jpg")

	# car_x_242 = Product.create!(
	# 	name: "Model X",
	# 	price: 90990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_242_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IBE00_false_REAR34.jpg")
	# car_x_242.photo.attach(io: car_x_242_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IBE00_false_REAR34.jpg")

	# car_x_243 = Product.create!(
	# 	name: "Model X",
	# 	price: 90990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_243_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IBE00_false_RIMCLOSEUP.jpg")
	# car_x_243.photo.attach(io: car_x_243_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IBE00_false_RIMCLOSEUP.jpg")

	# car_x_244 = Product.create!(
	# 	name: "Model X",
	# 	price: 90990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_244_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IBE00_false_INTERIOR.jpg")
	# car_x_244.photo.attach(io: car_x_244_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IBE00_false_INTERIOR.jpg")

	# car_x_245 = Product.create!(
	# 	name: "Model X",
	# 	price: 100990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_245_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IBE00_true_FRONT34.jpg")
	# car_x_245.photo.attach(io: car_x_245_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IBE00_true_FRONT34.jpg")

	# car_x_246 = Product.create!(
	# 	name: "Model X",
	# 	price: 100990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_246_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IBE00_true_SIDE.jpg")
	# car_x_246.photo.attach(io: car_x_246_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IBE00_true_SIDE.jpg")

	# car_x_247 = Product.create!(
	# 	name: "Model X",
	# 	price: 100990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_247_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IBE00_true_REAR34.jpg")
	# car_x_247.photo.attach(io: car_x_247_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IBE00_true_REAR34.jpg")

	# car_x_248 = Product.create!(
	# 	name: "Model X",
	# 	price: 100990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_248_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IBE00_true_RIMCLOSEUP.jpg")
	# car_x_248.photo.attach(io: car_x_248_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IBE00_true_RIMCLOSEUP.jpg")

	# car_x_249 = Product.create!(
	# 	name: "Model X",
	# 	price: 100990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_249_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IBE00_true_INTERIOR.jpg")
	# car_x_249.photo.attach(io: car_x_249_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IBE00_true_INTERIOR.jpg")

	# car_x_250 = Product.create!(
	# 	name: "Model X",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_250_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IWW00_false_FRONT34.jpg")
	# car_x_250.photo.attach(io: car_x_250_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IWW00_false_FRONT34.jpg")

	# car_x_251 = Product.create!(
	# 	name: "Model X",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_251_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IWW00_false_SIDE.jpg")
	# car_x_251.photo.attach(io: car_x_251_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IWW00_false_SIDE.jpg")

	# car_x_252 = Product.create!(
	# 	name: "Model X",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_252_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IWW00_false_REAR34.jpg")
	# car_x_252.photo.attach(io: car_x_252_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IWW00_false_REAR34.jpg")

	# car_x_253 = Product.create!(
	# 	name: "Model X",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_253_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IWW00_false_RIMCLOSEUP.jpg")
	# car_x_253.photo.attach(io: car_x_253_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IWW00_false_RIMCLOSEUP.jpg")

	# car_x_254 = Product.create!(
	# 	name: "Model X",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_254_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IWW00_false_INTERIOR.jpg")
	# car_x_254.photo.attach(io: car_x_254_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IWW00_false_INTERIOR.jpg")

	# car_x_255 = Product.create!(
	# 	name: "Model X",
	# 	price: 102990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_255_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IWW00_true_FRONT34.jpg")
	# car_x_255.photo.attach(io: car_x_255_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IWW00_true_FRONT34.jpg")

	# car_x_256 = Product.create!(
	# 	name: "Model X",
	# 	price: 102990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_256_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IWW00_true_SIDE.jpg")
	# car_x_256.photo.attach(io: car_x_256_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IWW00_true_SIDE.jpg")

	# car_x_257 = Product.create!(
	# 	name: "Model X",
	# 	price: 102990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_257_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IWW00_true_REAR34.jpg")
	# car_x_257.photo.attach(io: car_x_257_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IWW00_true_REAR34.jpg")

	# car_x_258 = Product.create!(
	# 	name: "Model X",
	# 	price: 102990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_258_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IWW00_true_RIMCLOSEUP.jpg")
	# car_x_258.photo.attach(io: car_x_258_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IWW00_true_RIMCLOSEUP.jpg")

	# car_x_259 = Product.create!(
	# 	name: "Model X",
	# 	price: 102990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_259_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$IWW00_true_INTERIOR.jpg")
	# car_x_259.photo.attach(io: car_x_259_file, filename: "model_x_$MTX10_$PPMR_$WX00_$IWW00_true_INTERIOR.jpg")

	# car_x_260 = Product.create!(
	# 	name: "Model X",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_260_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$ICW00_false_FRONT34.jpg")
	# car_x_260.photo.attach(io: car_x_260_file, filename: "model_x_$MTX10_$PPMR_$WX00_$ICW00_false_FRONT34.jpg")

	# car_x_261 = Product.create!(
	# 	name: "Model X",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_261_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$ICW00_false_SIDE.jpg")
	# car_x_261.photo.attach(io: car_x_261_file, filename: "model_x_$MTX10_$PPMR_$WX00_$ICW00_false_SIDE.jpg")

	# car_x_262 = Product.create!(
	# 	name: "Model X",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_262_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$ICW00_false_REAR34.jpg")
	# car_x_262.photo.attach(io: car_x_262_file, filename: "model_x_$MTX10_$PPMR_$WX00_$ICW00_false_REAR34.jpg")

	# car_x_263 = Product.create!(
	# 	name: "Model X",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_263_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$ICW00_false_RIMCLOSEUP.jpg")
	# car_x_263.photo.attach(io: car_x_263_file, filename: "model_x_$MTX10_$PPMR_$WX00_$ICW00_false_RIMCLOSEUP.jpg")

	# car_x_264 = Product.create!(
	# 	name: "Model X",
	# 	price: 92990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_264_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$ICW00_false_INTERIOR.jpg")
	# car_x_264.photo.attach(io: car_x_264_file, filename: "model_x_$MTX10_$PPMR_$WX00_$ICW00_false_INTERIOR.jpg")

	# car_x_265 = Product.create!(
	# 	name: "Model X",
	# 	price: 102990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_265_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$ICW00_true_FRONT34.jpg")
	# car_x_265.photo.attach(io: car_x_265_file, filename: "model_x_$MTX10_$PPMR_$WX00_$ICW00_true_FRONT34.jpg")

	# car_x_266 = Product.create!(
	# 	name: "Model X",
	# 	price: 102990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_266_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$ICW00_true_SIDE.jpg")
	# car_x_266.photo.attach(io: car_x_266_file, filename: "model_x_$MTX10_$PPMR_$WX00_$ICW00_true_SIDE.jpg")

	# car_x_267 = Product.create!(
	# 	name: "Model X",
	# 	price: 102990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_267_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$ICW00_true_REAR34.jpg")
	# car_x_267.photo.attach(io: car_x_267_file, filename: "model_x_$MTX10_$PPMR_$WX00_$ICW00_true_REAR34.jpg")

	# car_x_268 = Product.create!(
	# 	name: "Model X",
	# 	price: 102990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_268_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$ICW00_true_RIMCLOSEUP.jpg")
	# car_x_268.photo.attach(io: car_x_268_file, filename: "model_x_$MTX10_$PPMR_$WX00_$ICW00_true_RIMCLOSEUP.jpg")

	# car_x_269 = Product.create!(
	# 	name: "Model X",
	# 	price: 102990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "20\" Cyberstream Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_269_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX00_$ICW00_true_INTERIOR.jpg")
	# car_x_269.photo.attach(io: car_x_269_file, filename: "model_x_$MTX10_$PPMR_$WX00_$ICW00_true_INTERIOR.jpg")

	# car_x_270 = Product.create!(
	# 	name: "Model X",
	# 	price: 96490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_270_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IBE00_false_FRONT34.jpg")
	# car_x_270.photo.attach(io: car_x_270_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IBE00_false_FRONT34.jpg")

	# car_x_271 = Product.create!(
	# 	name: "Model X",
	# 	price: 96490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_271_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IBE00_false_SIDE.jpg")
	# car_x_271.photo.attach(io: car_x_271_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IBE00_false_SIDE.jpg")

	# car_x_272 = Product.create!(
	# 	name: "Model X",
	# 	price: 96490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_272_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IBE00_false_REAR34.jpg")
	# car_x_272.photo.attach(io: car_x_272_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IBE00_false_REAR34.jpg")

	# car_x_273 = Product.create!(
	# 	name: "Model X",
	# 	price: 96490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_273_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IBE00_false_RIMCLOSEUP.jpg")
	# car_x_273.photo.attach(io: car_x_273_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IBE00_false_RIMCLOSEUP.jpg")

	# car_x_274 = Product.create!(
	# 	name: "Model X",
	# 	price: 96490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_274_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IBE00_false_INTERIOR.jpg")
	# car_x_274.photo.attach(io: car_x_274_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IBE00_false_INTERIOR.jpg")

	# car_x_275 = Product.create!(
	# 	name: "Model X",
	# 	price: 106490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_275_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IBE00_true_FRONT34.jpg")
	# car_x_275.photo.attach(io: car_x_275_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IBE00_true_FRONT34.jpg")

	# car_x_276 = Product.create!(
	# 	name: "Model X",
	# 	price: 106490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_276_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IBE00_true_SIDE.jpg")
	# car_x_276.photo.attach(io: car_x_276_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IBE00_true_SIDE.jpg")

	# car_x_277 = Product.create!(
	# 	name: "Model X",
	# 	price: 106490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_277_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IBE00_true_REAR34.jpg")
	# car_x_277.photo.attach(io: car_x_277_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IBE00_true_REAR34.jpg")

	# car_x_278 = Product.create!(
	# 	name: "Model X",
	# 	price: 106490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_278_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IBE00_true_RIMCLOSEUP.jpg")
	# car_x_278.photo.attach(io: car_x_278_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IBE00_true_RIMCLOSEUP.jpg")

	# car_x_279 = Product.create!(
	# 	name: "Model X",
	# 	price: 106490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_279_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IBE00_true_INTERIOR.jpg")
	# car_x_279.photo.attach(io: car_x_279_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IBE00_true_INTERIOR.jpg")

	# car_x_280 = Product.create!(
	# 	name: "Model X",
	# 	price: 98490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_280_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IWW00_false_FRONT34.jpg")
	# car_x_280.photo.attach(io: car_x_280_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IWW00_false_FRONT34.jpg")

	# car_x_281 = Product.create!(
	# 	name: "Model X",
	# 	price: 98490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_281_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IWW00_false_SIDE.jpg")
	# car_x_281.photo.attach(io: car_x_281_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IWW00_false_SIDE.jpg")

	# car_x_282 = Product.create!(
	# 	name: "Model X",
	# 	price: 98490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_282_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IWW00_false_REAR34.jpg")
	# car_x_282.photo.attach(io: car_x_282_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IWW00_false_REAR34.jpg")

	# car_x_283 = Product.create!(
	# 	name: "Model X",
	# 	price: 98490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_283_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IWW00_false_RIMCLOSEUP.jpg")
	# car_x_283.photo.attach(io: car_x_283_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IWW00_false_RIMCLOSEUP.jpg")

	# car_x_284 = Product.create!(
	# 	name: "Model X",
	# 	price: 98490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_284_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IWW00_false_INTERIOR.jpg")
	# car_x_284.photo.attach(io: car_x_284_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IWW00_false_INTERIOR.jpg")

	# car_x_285 = Product.create!(
	# 	name: "Model X",
	# 	price: 108490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_285_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IWW00_true_FRONT34.jpg")
	# car_x_285.photo.attach(io: car_x_285_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IWW00_true_FRONT34.jpg")

	# car_x_286 = Product.create!(
	# 	name: "Model X",
	# 	price: 108490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_286_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IWW00_true_SIDE.jpg")
	# car_x_286.photo.attach(io: car_x_286_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IWW00_true_SIDE.jpg")

	# car_x_287 = Product.create!(
	# 	name: "Model X",
	# 	price: 108490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_287_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IWW00_true_REAR34.jpg")
	# car_x_287.photo.attach(io: car_x_287_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IWW00_true_REAR34.jpg")

	# car_x_288 = Product.create!(
	# 	name: "Model X",
	# 	price: 108490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_288_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IWW00_true_RIMCLOSEUP.jpg")
	# car_x_288.photo.attach(io: car_x_288_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IWW00_true_RIMCLOSEUP.jpg")

	# car_x_289 = Product.create!(
	# 	name: "Model X",
	# 	price: 108490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_289_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$IWW00_true_INTERIOR.jpg")
	# car_x_289.photo.attach(io: car_x_289_file, filename: "model_x_$MTX10_$PPMR_$WX20_$IWW00_true_INTERIOR.jpg")

	# car_x_290 = Product.create!(
	# 	name: "Model X",
	# 	price: 98490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_x_290_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$ICW00_false_FRONT34.jpg")
	# car_x_290.photo.attach(io: car_x_290_file, filename: "model_x_$MTX10_$PPMR_$WX20_$ICW00_false_FRONT34.jpg")

	# car_x_291 = Product.create!(
	# 	name: "Model X",
	# 	price: 98490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_x_291_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$ICW00_false_SIDE.jpg")
	# car_x_291.photo.attach(io: car_x_291_file, filename: "model_x_$MTX10_$PPMR_$WX20_$ICW00_false_SIDE.jpg")

	# car_x_292 = Product.create!(
	# 	name: "Model X",
	# 	price: 98490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_x_292_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$ICW00_false_REAR34.jpg")
	# car_x_292.photo.attach(io: car_x_292_file, filename: "model_x_$MTX10_$PPMR_$WX20_$ICW00_false_REAR34.jpg")

	# car_x_293 = Product.create!(
	# 	name: "Model X",
	# 	price: 98490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_x_293_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$ICW00_false_RIMCLOSEUP.jpg")
	# car_x_293.photo.attach(io: car_x_293_file, filename: "model_x_$MTX10_$PPMR_$WX20_$ICW00_false_RIMCLOSEUP.jpg")

	# car_x_294 = Product.create!(
	# 	name: "Model X",
	# 	price: 98490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_x_294_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$ICW00_false_INTERIOR.jpg")
	# car_x_294.photo.attach(io: car_x_294_file, filename: "model_x_$MTX10_$PPMR_$WX20_$ICW00_false_INTERIOR.jpg")

	# car_x_295 = Product.create!(
	# 	name: "Model X",
	# 	price: 108490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_x_295_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$ICW00_true_FRONT34.jpg")
	# car_x_295.photo.attach(io: car_x_295_file, filename: "model_x_$MTX10_$PPMR_$WX20_$ICW00_true_FRONT34.jpg")

	# car_x_296 = Product.create!(
	# 	name: "Model X",
	# 	price: 108490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_x_296_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$ICW00_true_SIDE.jpg")
	# car_x_296.photo.attach(io: car_x_296_file, filename: "model_x_$MTX10_$PPMR_$WX20_$ICW00_true_SIDE.jpg")

	# car_x_297 = Product.create!(
	# 	name: "Model X",
	# 	price: 108490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_x_297_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$ICW00_true_REAR34.jpg")
	# car_x_297.photo.attach(io: car_x_297_file, filename: "model_x_$MTX10_$PPMR_$WX20_$ICW00_true_REAR34.jpg")

	# car_x_298 = Product.create!(
	# 	name: "Model X",
	# 	price: 108490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_x_298_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$ICW00_true_RIMCLOSEUP.jpg")
	# car_x_298.photo.attach(io: car_x_298_file, filename: "model_x_$MTX10_$PPMR_$WX20_$ICW00_true_RIMCLOSEUP.jpg")

	# car_x_299 = Product.create!(
	# 	name: "Model X",
	# 	price: 108490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Cream",
	# 	wheel_type: "22\" Turbine Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_x_299_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modelx/model_x_$MTX10_$PPMR_$WX20_$ICW00_true_INTERIOR.jpg")
	# car_x_299.photo.attach(io: car_x_299_file, filename: "model_x_$MTX10_$PPMR_$WX20_$ICW00_true_INTERIOR.jpg")

	# puts "Creating Model 3..."

	# car_3_0 = Product.create!(
	# 	name: "Model 3",
	# 	price: 35490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_0_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBB0_false_STUD_FRONT34.jpg")
	# car_3_0.photo.attach(io: car_3_0_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBB0_false_STUD_FRONT34.jpg")

	# car_3_1 = Product.create!(
	# 	name: "Model 3",
	# 	price: 35490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_1_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBB0_false_STUD_SIDEVIEW.jpg")
	# car_3_1.photo.attach(io: car_3_1_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBB0_false_STUD_SIDEVIEW.jpg")

	# car_3_2 = Product.create!(
	# 	name: "Model 3",
	# 	price: 35490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_2_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBB0_false_STUD_REAR34.jpg")
	# car_3_2.photo.attach(io: car_3_2_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBB0_false_STUD_REAR34.jpg")

	# car_3_3 = Product.create!(
	# 	name: "Model 3",
	# 	price: 35490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_3_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBB0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_3.photo.attach(io: car_3_3_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBB0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_4 = Product.create!(
	# 	name: "Model 3",
	# 	price: 35490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_4_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBB0_false_STUD_INTERIOR.jpg")
	# car_3_4.photo.attach(io: car_3_4_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBB0_false_STUD_INTERIOR.jpg")

	# car_3_5 = Product.create!(
	# 	name: "Model 3",
	# 	price: 45490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_5_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBB0_true_STUD_FRONT34.jpg")
	# car_3_5.photo.attach(io: car_3_5_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBB0_true_STUD_FRONT34.jpg")

	# car_3_6 = Product.create!(
	# 	name: "Model 3",
	# 	price: 45490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_6_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBB0_true_STUD_SIDEVIEW.jpg")
	# car_3_6.photo.attach(io: car_3_6_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBB0_true_STUD_SIDEVIEW.jpg")

	# car_3_7 = Product.create!(
	# 	name: "Model 3",
	# 	price: 45490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_7_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBB0_true_STUD_REAR34.jpg")
	# car_3_7.photo.attach(io: car_3_7_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBB0_true_STUD_REAR34.jpg")

	# car_3_8 = Product.create!(
	# 	name: "Model 3",
	# 	price: 45490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_8_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBB0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_8.photo.attach(io: car_3_8_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBB0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_9 = Product.create!(
	# 	name: "Model 3",
	# 	price: 45490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_9_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBB0_true_STUD_INTERIOR.jpg")
	# car_3_9.photo.attach(io: car_3_9_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBB0_true_STUD_INTERIOR.jpg")

	# car_3_10 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_10_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBW0_false_STUD_FRONT34.jpg")
	# car_3_10.photo.attach(io: car_3_10_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBW0_false_STUD_FRONT34.jpg")

	# car_3_11 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_11_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBW0_false_STUD_SIDEVIEW.jpg")
	# car_3_11.photo.attach(io: car_3_11_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBW0_false_STUD_SIDEVIEW.jpg")

	# car_3_12 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_12_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBW0_false_STUD_REAR34.jpg")
	# car_3_12.photo.attach(io: car_3_12_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBW0_false_STUD_REAR34.jpg")

	# car_3_13 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_13_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBW0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_13.photo.attach(io: car_3_13_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBW0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_14 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_14_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBW0_false_STUD_INTERIOR.jpg")
	# car_3_14.photo.attach(io: car_3_14_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBW0_false_STUD_INTERIOR.jpg")

	# car_3_15 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_15_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBW0_true_STUD_FRONT34.jpg")
	# car_3_15.photo.attach(io: car_3_15_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBW0_true_STUD_FRONT34.jpg")

	# car_3_16 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_16_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBW0_true_STUD_SIDEVIEW.jpg")
	# car_3_16.photo.attach(io: car_3_16_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBW0_true_STUD_SIDEVIEW.jpg")

	# car_3_17 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_17_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBW0_true_STUD_REAR34.jpg")
	# car_3_17.photo.attach(io: car_3_17_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBW0_true_STUD_REAR34.jpg")

	# car_3_18 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_18_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBW0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_18.photo.attach(io: car_3_18_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBW0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_19 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_19_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W40B_$IBW0_true_STUD_INTERIOR.jpg")
	# car_3_19.photo.attach(io: car_3_19_file, filename: "model_3_$MT314_$PPSW_$W40B_$IBW0_true_STUD_INTERIOR.jpg")

	# car_3_20 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_20_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBB0_false_STUD_FRONT34.jpg")
	# car_3_20.photo.attach(io: car_3_20_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBB0_false_STUD_FRONT34.jpg")

	# car_3_21 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_21_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBB0_false_STUD_SIDEVIEW.jpg")
	# car_3_21.photo.attach(io: car_3_21_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBB0_false_STUD_SIDEVIEW.jpg")

	# car_3_22 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_22_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBB0_false_STUD_REAR34.jpg")
	# car_3_22.photo.attach(io: car_3_22_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBB0_false_STUD_REAR34.jpg")

	# car_3_23 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_23_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBB0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_23.photo.attach(io: car_3_23_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBB0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_24 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_24_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBB0_false_STUD_INTERIOR.jpg")
	# car_3_24.photo.attach(io: car_3_24_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBB0_false_STUD_INTERIOR.jpg")

	# car_3_25 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_25_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBB0_true_STUD_FRONT34.jpg")
	# car_3_25.photo.attach(io: car_3_25_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBB0_true_STUD_FRONT34.jpg")

	# car_3_26 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_26_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBB0_true_STUD_SIDEVIEW.jpg")
	# car_3_26.photo.attach(io: car_3_26_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBB0_true_STUD_SIDEVIEW.jpg")

	# car_3_27 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_27_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBB0_true_STUD_REAR34.jpg")
	# car_3_27.photo.attach(io: car_3_27_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBB0_true_STUD_REAR34.jpg")

	# car_3_28 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_28_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBB0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_28.photo.attach(io: car_3_28_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBB0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_29 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_29_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBB0_true_STUD_INTERIOR.jpg")
	# car_3_29.photo.attach(io: car_3_29_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBB0_true_STUD_INTERIOR.jpg")

	# car_3_30 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_30_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBW0_false_STUD_FRONT34.jpg")
	# car_3_30.photo.attach(io: car_3_30_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBW0_false_STUD_FRONT34.jpg")

	# car_3_31 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_31_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBW0_false_STUD_SIDEVIEW.jpg")
	# car_3_31.photo.attach(io: car_3_31_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBW0_false_STUD_SIDEVIEW.jpg")

	# car_3_32 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_32_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBW0_false_STUD_REAR34.jpg")
	# car_3_32.photo.attach(io: car_3_32_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBW0_false_STUD_REAR34.jpg")

	# car_3_33 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_33_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBW0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_33.photo.attach(io: car_3_33_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBW0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_34 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_34_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBW0_false_STUD_INTERIOR.jpg")
	# car_3_34.photo.attach(io: car_3_34_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBW0_false_STUD_INTERIOR.jpg")

	# car_3_35 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_35_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBW0_true_STUD_FRONT34.jpg")
	# car_3_35.photo.attach(io: car_3_35_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBW0_true_STUD_FRONT34.jpg")

	# car_3_36 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_36_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBW0_true_STUD_SIDEVIEW.jpg")
	# car_3_36.photo.attach(io: car_3_36_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBW0_true_STUD_SIDEVIEW.jpg")

	# car_3_37 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_37_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBW0_true_STUD_REAR34.jpg")
	# car_3_37.photo.attach(io: car_3_37_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBW0_true_STUD_REAR34.jpg")

	# car_3_38 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_38_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBW0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_38.photo.attach(io: car_3_38_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBW0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_39 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_39_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSW_$W41B_$IBW0_true_STUD_INTERIOR.jpg")
	# car_3_39.photo.attach(io: car_3_39_file, filename: "model_3_$MT314_$PPSW_$W41B_$IBW0_true_STUD_INTERIOR.jpg")

	# car_3_40 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_40_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBB0_false_STUD_FRONT34.jpg")
	# car_3_40.photo.attach(io: car_3_40_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBB0_false_STUD_FRONT34.jpg")

	# car_3_41 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_41_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBB0_false_STUD_SIDEVIEW.jpg")
	# car_3_41.photo.attach(io: car_3_41_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBB0_false_STUD_SIDEVIEW.jpg")

	# car_3_42 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_42_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBB0_false_STUD_REAR34.jpg")
	# car_3_42.photo.attach(io: car_3_42_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBB0_false_STUD_REAR34.jpg")

	# car_3_43 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_43_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBB0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_43.photo.attach(io: car_3_43_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBB0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_44 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_44_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBB0_false_STUD_INTERIOR.jpg")
	# car_3_44.photo.attach(io: car_3_44_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBB0_false_STUD_INTERIOR.jpg")

	# car_3_45 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_45_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBB0_true_STUD_FRONT34.jpg")
	# car_3_45.photo.attach(io: car_3_45_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBB0_true_STUD_FRONT34.jpg")

	# car_3_46 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_46_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBB0_true_STUD_SIDEVIEW.jpg")
	# car_3_46.photo.attach(io: car_3_46_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBB0_true_STUD_SIDEVIEW.jpg")

	# car_3_47 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_47_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBB0_true_STUD_REAR34.jpg")
	# car_3_47.photo.attach(io: car_3_47_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBB0_true_STUD_REAR34.jpg")

	# car_3_48 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_48_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBB0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_48.photo.attach(io: car_3_48_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBB0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_49 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_49_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBB0_true_STUD_INTERIOR.jpg")
	# car_3_49.photo.attach(io: car_3_49_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBB0_true_STUD_INTERIOR.jpg")

	# car_3_50 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_50_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBW0_false_STUD_FRONT34.jpg")
	# car_3_50.photo.attach(io: car_3_50_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBW0_false_STUD_FRONT34.jpg")

	# car_3_51 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_51_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBW0_false_STUD_SIDEVIEW.jpg")
	# car_3_51.photo.attach(io: car_3_51_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBW0_false_STUD_SIDEVIEW.jpg")

	# car_3_52 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_52_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBW0_false_STUD_REAR34.jpg")
	# car_3_52.photo.attach(io: car_3_52_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBW0_false_STUD_REAR34.jpg")

	# car_3_53 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_53_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBW0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_53.photo.attach(io: car_3_53_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBW0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_54 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_54_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBW0_false_STUD_INTERIOR.jpg")
	# car_3_54.photo.attach(io: car_3_54_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBW0_false_STUD_INTERIOR.jpg")

	# car_3_55 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_55_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBW0_true_STUD_FRONT34.jpg")
	# car_3_55.photo.attach(io: car_3_55_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBW0_true_STUD_FRONT34.jpg")

	# car_3_56 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_56_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBW0_true_STUD_SIDEVIEW.jpg")
	# car_3_56.photo.attach(io: car_3_56_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBW0_true_STUD_SIDEVIEW.jpg")

	# car_3_57 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_57_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBW0_true_STUD_REAR34.jpg")
	# car_3_57.photo.attach(io: car_3_57_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBW0_true_STUD_REAR34.jpg")

	# car_3_58 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_58_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBW0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_58.photo.attach(io: car_3_58_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBW0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_59 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_59_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W40B_$IBW0_true_STUD_INTERIOR.jpg")
	# car_3_59.photo.attach(io: car_3_59_file, filename: "model_3_$MT314_$PBSB_$W40B_$IBW0_true_STUD_INTERIOR.jpg")

	# car_3_60 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_60_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBB0_false_STUD_FRONT34.jpg")
	# car_3_60.photo.attach(io: car_3_60_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBB0_false_STUD_FRONT34.jpg")

	# car_3_61 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_61_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBB0_false_STUD_SIDEVIEW.jpg")
	# car_3_61.photo.attach(io: car_3_61_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBB0_false_STUD_SIDEVIEW.jpg")

	# car_3_62 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_62_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBB0_false_STUD_REAR34.jpg")
	# car_3_62.photo.attach(io: car_3_62_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBB0_false_STUD_REAR34.jpg")

	# car_3_63 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_63_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBB0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_63.photo.attach(io: car_3_63_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBB0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_64 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_64_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBB0_false_STUD_INTERIOR.jpg")
	# car_3_64.photo.attach(io: car_3_64_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBB0_false_STUD_INTERIOR.jpg")

	# car_3_65 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_65_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBB0_true_STUD_FRONT34.jpg")
	# car_3_65.photo.attach(io: car_3_65_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBB0_true_STUD_FRONT34.jpg")

	# car_3_66 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_66_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBB0_true_STUD_SIDEVIEW.jpg")
	# car_3_66.photo.attach(io: car_3_66_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBB0_true_STUD_SIDEVIEW.jpg")

	# car_3_67 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_67_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBB0_true_STUD_REAR34.jpg")
	# car_3_67.photo.attach(io: car_3_67_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBB0_true_STUD_REAR34.jpg")

	# car_3_68 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_68_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBB0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_68.photo.attach(io: car_3_68_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBB0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_69 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_69_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBB0_true_STUD_INTERIOR.jpg")
	# car_3_69.photo.attach(io: car_3_69_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBB0_true_STUD_INTERIOR.jpg")

	# car_3_70 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_70_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBW0_false_STUD_FRONT34.jpg")
	# car_3_70.photo.attach(io: car_3_70_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBW0_false_STUD_FRONT34.jpg")

	# car_3_71 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_71_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBW0_false_STUD_SIDEVIEW.jpg")
	# car_3_71.photo.attach(io: car_3_71_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBW0_false_STUD_SIDEVIEW.jpg")

	# car_3_72 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_72_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBW0_false_STUD_REAR34.jpg")
	# car_3_72.photo.attach(io: car_3_72_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBW0_false_STUD_REAR34.jpg")

	# car_3_73 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_73_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBW0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_73.photo.attach(io: car_3_73_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBW0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_74 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_74_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBW0_false_STUD_INTERIOR.jpg")
	# car_3_74.photo.attach(io: car_3_74_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBW0_false_STUD_INTERIOR.jpg")

	# car_3_75 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_75_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBW0_true_STUD_FRONT34.jpg")
	# car_3_75.photo.attach(io: car_3_75_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBW0_true_STUD_FRONT34.jpg")

	# car_3_76 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_76_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBW0_true_STUD_SIDEVIEW.jpg")
	# car_3_76.photo.attach(io: car_3_76_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBW0_true_STUD_SIDEVIEW.jpg")

	# car_3_77 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_77_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBW0_true_STUD_REAR34.jpg")
	# car_3_77.photo.attach(io: car_3_77_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBW0_true_STUD_REAR34.jpg")

	# car_3_78 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_78_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBW0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_78.photo.attach(io: car_3_78_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBW0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_79 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_79_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PBSB_$W41B_$IBW0_true_STUD_INTERIOR.jpg")
	# car_3_79.photo.attach(io: car_3_79_file, filename: "model_3_$MT314_$PBSB_$W41B_$IBW0_true_STUD_INTERIOR.jpg")

	# car_3_80 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_80_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBB0_false_STUD_FRONT34.jpg")
	# car_3_80.photo.attach(io: car_3_80_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBB0_false_STUD_FRONT34.jpg")

	# car_3_81 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_81_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBB0_false_STUD_SIDEVIEW.jpg")
	# car_3_81.photo.attach(io: car_3_81_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBB0_false_STUD_SIDEVIEW.jpg")

	# car_3_82 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_82_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBB0_false_STUD_REAR34.jpg")
	# car_3_82.photo.attach(io: car_3_82_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBB0_false_STUD_REAR34.jpg")

	# car_3_83 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_83_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBB0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_83.photo.attach(io: car_3_83_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBB0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_84 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_84_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBB0_false_STUD_INTERIOR.jpg")
	# car_3_84.photo.attach(io: car_3_84_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBB0_false_STUD_INTERIOR.jpg")

	# car_3_85 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_85_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBB0_true_STUD_FRONT34.jpg")
	# car_3_85.photo.attach(io: car_3_85_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBB0_true_STUD_FRONT34.jpg")

	# car_3_86 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_86_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBB0_true_STUD_SIDEVIEW.jpg")
	# car_3_86.photo.attach(io: car_3_86_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBB0_true_STUD_SIDEVIEW.jpg")

	# car_3_87 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_87_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBB0_true_STUD_REAR34.jpg")
	# car_3_87.photo.attach(io: car_3_87_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBB0_true_STUD_REAR34.jpg")

	# car_3_88 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_88_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBB0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_88.photo.attach(io: car_3_88_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBB0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_89 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_89_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBB0_true_STUD_INTERIOR.jpg")
	# car_3_89.photo.attach(io: car_3_89_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBB0_true_STUD_INTERIOR.jpg")

	# car_3_90 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_90_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBW0_false_STUD_FRONT34.jpg")
	# car_3_90.photo.attach(io: car_3_90_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBW0_false_STUD_FRONT34.jpg")

	# car_3_91 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_91_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBW0_false_STUD_SIDEVIEW.jpg")
	# car_3_91.photo.attach(io: car_3_91_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBW0_false_STUD_SIDEVIEW.jpg")

	# car_3_92 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_92_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBW0_false_STUD_REAR34.jpg")
	# car_3_92.photo.attach(io: car_3_92_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBW0_false_STUD_REAR34.jpg")

	# car_3_93 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_93_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBW0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_93.photo.attach(io: car_3_93_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBW0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_94 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_94_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBW0_false_STUD_INTERIOR.jpg")
	# car_3_94.photo.attach(io: car_3_94_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBW0_false_STUD_INTERIOR.jpg")

	# car_3_95 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_95_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBW0_true_STUD_FRONT34.jpg")
	# car_3_95.photo.attach(io: car_3_95_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBW0_true_STUD_FRONT34.jpg")

	# car_3_96 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_96_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBW0_true_STUD_SIDEVIEW.jpg")
	# car_3_96.photo.attach(io: car_3_96_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBW0_true_STUD_SIDEVIEW.jpg")

	# car_3_97 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_97_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBW0_true_STUD_REAR34.jpg")
	# car_3_97.photo.attach(io: car_3_97_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBW0_true_STUD_REAR34.jpg")

	# car_3_98 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_98_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBW0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_98.photo.attach(io: car_3_98_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBW0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_99 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_99_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W40B_$IBW0_true_STUD_INTERIOR.jpg")
	# car_3_99.photo.attach(io: car_3_99_file, filename: "model_3_$MT314_$PMNG_$W40B_$IBW0_true_STUD_INTERIOR.jpg")

	# car_3_100 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_100_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBB0_false_STUD_FRONT34.jpg")
	# car_3_100.photo.attach(io: car_3_100_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBB0_false_STUD_FRONT34.jpg")

	# puts "Creating Model 3_1..."

	# car_3_101 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_101_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBB0_false_STUD_SIDEVIEW.jpg")
	# car_3_101.photo.attach(io: car_3_101_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBB0_false_STUD_SIDEVIEW.jpg")

	# car_3_102 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_102_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBB0_false_STUD_REAR34.jpg")
	# car_3_102.photo.attach(io: car_3_102_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBB0_false_STUD_REAR34.jpg")

	# car_3_103 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_103_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBB0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_103.photo.attach(io: car_3_103_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBB0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_104 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_104_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBB0_false_STUD_INTERIOR.jpg")
	# car_3_104.photo.attach(io: car_3_104_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBB0_false_STUD_INTERIOR.jpg")

	# car_3_105 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_105_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBB0_true_STUD_FRONT34.jpg")
	# car_3_105.photo.attach(io: car_3_105_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBB0_true_STUD_FRONT34.jpg")

	# car_3_106 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_106_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBB0_true_STUD_SIDEVIEW.jpg")
	# car_3_106.photo.attach(io: car_3_106_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBB0_true_STUD_SIDEVIEW.jpg")

	# car_3_107 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_107_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBB0_true_STUD_REAR34.jpg")
	# car_3_107.photo.attach(io: car_3_107_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBB0_true_STUD_REAR34.jpg")

	# car_3_108 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_108_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBB0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_108.photo.attach(io: car_3_108_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBB0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_109 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_109_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBB0_true_STUD_INTERIOR.jpg")
	# car_3_109.photo.attach(io: car_3_109_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBB0_true_STUD_INTERIOR.jpg")

	# car_3_110 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_110_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBW0_false_STUD_FRONT34.jpg")
	# car_3_110.photo.attach(io: car_3_110_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBW0_false_STUD_FRONT34.jpg")

	# car_3_111 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_111_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBW0_false_STUD_SIDEVIEW.jpg")
	# car_3_111.photo.attach(io: car_3_111_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBW0_false_STUD_SIDEVIEW.jpg")

	# car_3_112 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_112_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBW0_false_STUD_REAR34.jpg")
	# car_3_112.photo.attach(io: car_3_112_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBW0_false_STUD_REAR34.jpg")

	# car_3_113 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_113_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBW0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_113.photo.attach(io: car_3_113_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBW0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_114 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_114_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBW0_false_STUD_INTERIOR.jpg")
	# car_3_114.photo.attach(io: car_3_114_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBW0_false_STUD_INTERIOR.jpg")

	# car_3_115 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_115_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBW0_true_STUD_FRONT34.jpg")
	# car_3_115.photo.attach(io: car_3_115_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBW0_true_STUD_FRONT34.jpg")

	# car_3_116 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_116_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBW0_true_STUD_SIDEVIEW.jpg")
	# car_3_116.photo.attach(io: car_3_116_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBW0_true_STUD_SIDEVIEW.jpg")

	# car_3_117 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_117_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBW0_true_STUD_REAR34.jpg")
	# car_3_117.photo.attach(io: car_3_117_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBW0_true_STUD_REAR34.jpg")

	# car_3_118 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_118_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBW0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_118.photo.attach(io: car_3_118_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBW0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_119 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_119_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PMNG_$W41B_$IBW0_true_STUD_INTERIOR.jpg")
	# car_3_119.photo.attach(io: car_3_119_file, filename: "model_3_$MT314_$PMNG_$W41B_$IBW0_true_STUD_INTERIOR.jpg")

	# car_3_120 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_120_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBB0_false_STUD_FRONT34.jpg")
	# car_3_120.photo.attach(io: car_3_120_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBB0_false_STUD_FRONT34.jpg")

	# car_3_121 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_121_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBB0_false_STUD_SIDEVIEW.jpg")
	# car_3_121.photo.attach(io: car_3_121_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBB0_false_STUD_SIDEVIEW.jpg")

	# car_3_122 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_122_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBB0_false_STUD_REAR34.jpg")
	# car_3_122.photo.attach(io: car_3_122_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBB0_false_STUD_REAR34.jpg")

	# car_3_123 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_123_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBB0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_123.photo.attach(io: car_3_123_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBB0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_124 = Product.create!(
	# 	name: "Model 3",
	# 	price: 36490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_124_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBB0_false_STUD_INTERIOR.jpg")
	# car_3_124.photo.attach(io: car_3_124_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBB0_false_STUD_INTERIOR.jpg")

	# car_3_125 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_125_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBB0_true_STUD_FRONT34.jpg")
	# car_3_125.photo.attach(io: car_3_125_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBB0_true_STUD_FRONT34.jpg")

	# car_3_126 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_126_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBB0_true_STUD_SIDEVIEW.jpg")
	# car_3_126.photo.attach(io: car_3_126_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBB0_true_STUD_SIDEVIEW.jpg")

	# car_3_127 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_127_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBB0_true_STUD_REAR34.jpg")
	# car_3_127.photo.attach(io: car_3_127_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBB0_true_STUD_REAR34.jpg")

	# car_3_128 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_128_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBB0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_128.photo.attach(io: car_3_128_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBB0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_129 = Product.create!(
	# 	name: "Model 3",
	# 	price: 46490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_129_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBB0_true_STUD_INTERIOR.jpg")
	# car_3_129.photo.attach(io: car_3_129_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBB0_true_STUD_INTERIOR.jpg")

	# car_3_130 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_130_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBW0_false_STUD_FRONT34.jpg")
	# car_3_130.photo.attach(io: car_3_130_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBW0_false_STUD_FRONT34.jpg")

	# car_3_131 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_131_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBW0_false_STUD_SIDEVIEW.jpg")
	# car_3_131.photo.attach(io: car_3_131_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBW0_false_STUD_SIDEVIEW.jpg")

	# car_3_132 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_132_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBW0_false_STUD_REAR34.jpg")
	# car_3_132.photo.attach(io: car_3_132_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBW0_false_STUD_REAR34.jpg")

	# car_3_133 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_133_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBW0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_133.photo.attach(io: car_3_133_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBW0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_134 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_134_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBW0_false_STUD_INTERIOR.jpg")
	# car_3_134.photo.attach(io: car_3_134_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBW0_false_STUD_INTERIOR.jpg")

	# car_3_135 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_135_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBW0_true_STUD_FRONT34.jpg")
	# car_3_135.photo.attach(io: car_3_135_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBW0_true_STUD_FRONT34.jpg")

	# car_3_136 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_136_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBW0_true_STUD_SIDEVIEW.jpg")
	# car_3_136.photo.attach(io: car_3_136_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBW0_true_STUD_SIDEVIEW.jpg")

	# car_3_137 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_137_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBW0_true_STUD_REAR34.jpg")
	# car_3_137.photo.attach(io: car_3_137_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBW0_true_STUD_REAR34.jpg")

	# car_3_138 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_138_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBW0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_138.photo.attach(io: car_3_138_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBW0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_139 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_139_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W40B_$IBW0_true_STUD_INTERIOR.jpg")
	# car_3_139.photo.attach(io: car_3_139_file, filename: "model_3_$MT314_$PPSB_$W40B_$IBW0_true_STUD_INTERIOR.jpg")

	# car_3_140 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_140_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBB0_false_STUD_FRONT34.jpg")
	# car_3_140.photo.attach(io: car_3_140_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBB0_false_STUD_FRONT34.jpg")

	# car_3_141 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_141_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBB0_false_STUD_SIDEVIEW.jpg")
	# car_3_141.photo.attach(io: car_3_141_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBB0_false_STUD_SIDEVIEW.jpg")

	# car_3_142 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_142_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBB0_false_STUD_REAR34.jpg")
	# car_3_142.photo.attach(io: car_3_142_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBB0_false_STUD_REAR34.jpg")

	# car_3_143 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_143_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBB0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_143.photo.attach(io: car_3_143_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBB0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_144 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_144_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBB0_false_STUD_INTERIOR.jpg")
	# car_3_144.photo.attach(io: car_3_144_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBB0_false_STUD_INTERIOR.jpg")

	# car_3_145 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_145_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBB0_true_STUD_FRONT34.jpg")
	# car_3_145.photo.attach(io: car_3_145_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBB0_true_STUD_FRONT34.jpg")

	# car_3_146 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_146_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBB0_true_STUD_SIDEVIEW.jpg")
	# car_3_146.photo.attach(io: car_3_146_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBB0_true_STUD_SIDEVIEW.jpg")

	# car_3_147 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_147_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBB0_true_STUD_REAR34.jpg")
	# car_3_147.photo.attach(io: car_3_147_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBB0_true_STUD_REAR34.jpg")

	# car_3_148 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_148_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBB0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_148.photo.attach(io: car_3_148_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBB0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_149 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_149_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBB0_true_STUD_INTERIOR.jpg")
	# car_3_149.photo.attach(io: car_3_149_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBB0_true_STUD_INTERIOR.jpg")

	# car_3_150 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_150_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBW0_false_STUD_FRONT34.jpg")
	# car_3_150.photo.attach(io: car_3_150_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBW0_false_STUD_FRONT34.jpg")

	# car_3_151 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_151_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBW0_false_STUD_SIDEVIEW.jpg")
	# car_3_151.photo.attach(io: car_3_151_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBW0_false_STUD_SIDEVIEW.jpg")

	# car_3_152 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_152_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBW0_false_STUD_REAR34.jpg")
	# car_3_152.photo.attach(io: car_3_152_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBW0_false_STUD_REAR34.jpg")

	# car_3_153 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_153_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBW0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_153.photo.attach(io: car_3_153_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBW0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_154 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_154_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBW0_false_STUD_INTERIOR.jpg")
	# car_3_154.photo.attach(io: car_3_154_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBW0_false_STUD_INTERIOR.jpg")

	# car_3_155 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_155_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBW0_true_STUD_FRONT34.jpg")
	# car_3_155.photo.attach(io: car_3_155_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBW0_true_STUD_FRONT34.jpg")

	# car_3_156 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_156_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBW0_true_STUD_SIDEVIEW.jpg")
	# car_3_156.photo.attach(io: car_3_156_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBW0_true_STUD_SIDEVIEW.jpg")

	# car_3_157 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_157_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBW0_true_STUD_REAR34.jpg")
	# car_3_157.photo.attach(io: car_3_157_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBW0_true_STUD_REAR34.jpg")

	# car_3_158 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_158_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBW0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_158.photo.attach(io: car_3_158_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBW0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_159 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_159_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPSB_$W41B_$IBW0_true_STUD_INTERIOR.jpg")
	# car_3_159.photo.attach(io: car_3_159_file, filename: "model_3_$MT314_$PPSB_$W41B_$IBW0_true_STUD_INTERIOR.jpg")

	# car_3_160 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_160_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBB0_false_STUD_FRONT34.jpg")
	# car_3_160.photo.attach(io: car_3_160_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBB0_false_STUD_FRONT34.jpg")

	# car_3_161 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_161_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBB0_false_STUD_SIDEVIEW.jpg")
	# car_3_161.photo.attach(io: car_3_161_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBB0_false_STUD_SIDEVIEW.jpg")

	# car_3_162 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_162_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBB0_false_STUD_REAR34.jpg")
	# car_3_162.photo.attach(io: car_3_162_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBB0_false_STUD_REAR34.jpg")

	# car_3_163 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_163_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBB0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_163.photo.attach(io: car_3_163_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBB0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_164 = Product.create!(
	# 	name: "Model 3",
	# 	price: 37490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_164_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBB0_false_STUD_INTERIOR.jpg")
	# car_3_164.photo.attach(io: car_3_164_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBB0_false_STUD_INTERIOR.jpg")

	# car_3_165 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_165_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBB0_true_STUD_FRONT34.jpg")
	# car_3_165.photo.attach(io: car_3_165_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBB0_true_STUD_FRONT34.jpg")

	# car_3_166 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_166_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBB0_true_STUD_SIDEVIEW.jpg")
	# car_3_166.photo.attach(io: car_3_166_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBB0_true_STUD_SIDEVIEW.jpg")

	# car_3_167 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_167_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBB0_true_STUD_REAR34.jpg")
	# car_3_167.photo.attach(io: car_3_167_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBB0_true_STUD_REAR34.jpg")

	# car_3_168 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_168_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBB0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_168.photo.attach(io: car_3_168_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBB0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_169 = Product.create!(
	# 	name: "Model 3",
	# 	price: 47490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_169_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBB0_true_STUD_INTERIOR.jpg")
	# car_3_169.photo.attach(io: car_3_169_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBB0_true_STUD_INTERIOR.jpg")

	# car_3_170 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_170_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBW0_false_STUD_FRONT34.jpg")
	# car_3_170.photo.attach(io: car_3_170_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBW0_false_STUD_FRONT34.jpg")

	# car_3_171 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_171_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBW0_false_STUD_SIDEVIEW.jpg")
	# car_3_171.photo.attach(io: car_3_171_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBW0_false_STUD_SIDEVIEW.jpg")

	# car_3_172 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_172_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBW0_false_STUD_REAR34.jpg")
	# car_3_172.photo.attach(io: car_3_172_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBW0_false_STUD_REAR34.jpg")

	# car_3_173 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_173_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBW0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_173.photo.attach(io: car_3_173_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBW0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_174 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_174_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBW0_false_STUD_INTERIOR.jpg")
	# car_3_174.photo.attach(io: car_3_174_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBW0_false_STUD_INTERIOR.jpg")

	# car_3_175 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_175_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBW0_true_STUD_FRONT34.jpg")
	# car_3_175.photo.attach(io: car_3_175_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBW0_true_STUD_FRONT34.jpg")

	# car_3_176 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_176_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBW0_true_STUD_SIDEVIEW.jpg")
	# car_3_176.photo.attach(io: car_3_176_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBW0_true_STUD_SIDEVIEW.jpg")

	# car_3_177 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_177_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBW0_true_STUD_REAR34.jpg")
	# car_3_177.photo.attach(io: car_3_177_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBW0_true_STUD_REAR34.jpg")

	# car_3_178 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_178_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBW0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_178.photo.attach(io: car_3_178_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBW0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_179 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "18\" Aero Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_179_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W40B_$IBW0_true_STUD_INTERIOR.jpg")
	# car_3_179.photo.attach(io: car_3_179_file, filename: "model_3_$MT314_$PPMR_$W40B_$IBW0_true_STUD_INTERIOR.jpg")

	# car_3_180 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_180_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBB0_false_STUD_FRONT34.jpg")
	# car_3_180.photo.attach(io: car_3_180_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBB0_false_STUD_FRONT34.jpg")

	# car_3_181 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_181_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBB0_false_STUD_SIDEVIEW.jpg")
	# car_3_181.photo.attach(io: car_3_181_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBB0_false_STUD_SIDEVIEW.jpg")

	# car_3_182 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_182_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBB0_false_STUD_REAR34.jpg")
	# car_3_182.photo.attach(io: car_3_182_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBB0_false_STUD_REAR34.jpg")

	# car_3_183 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_183_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBB0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_183.photo.attach(io: car_3_183_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBB0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_184 = Product.create!(
	# 	name: "Model 3",
	# 	price: 38990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_184_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBB0_false_STUD_INTERIOR.jpg")
	# car_3_184.photo.attach(io: car_3_184_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBB0_false_STUD_INTERIOR.jpg")

	# car_3_185 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_185_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBB0_true_STUD_FRONT34.jpg")
	# car_3_185.photo.attach(io: car_3_185_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBB0_true_STUD_FRONT34.jpg")

	# car_3_186 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_186_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBB0_true_STUD_SIDEVIEW.jpg")
	# car_3_186.photo.attach(io: car_3_186_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBB0_true_STUD_SIDEVIEW.jpg")

	# car_3_187 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_187_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBB0_true_STUD_REAR34.jpg")
	# car_3_187.photo.attach(io: car_3_187_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBB0_true_STUD_REAR34.jpg")

	# car_3_188 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_188_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBB0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_188.photo.attach(io: car_3_188_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBB0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_189 = Product.create!(
	# 	name: "Model 3",
	# 	price: 48990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_189_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBB0_true_STUD_INTERIOR.jpg")
	# car_3_189.photo.attach(io: car_3_189_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBB0_true_STUD_INTERIOR.jpg")

	# car_3_190 = Product.create!(
	# 	name: "Model 3",
	# 	price: 39990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_3_190_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBW0_false_STUD_FRONT34.jpg")
	# car_3_190.photo.attach(io: car_3_190_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBW0_false_STUD_FRONT34.jpg")

	# car_3_191 = Product.create!(
	# 	name: "Model 3",
	# 	price: 39990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_3_191_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBW0_false_STUD_SIDEVIEW.jpg")
	# car_3_191.photo.attach(io: car_3_191_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBW0_false_STUD_SIDEVIEW.jpg")

	# car_3_192 = Product.create!(
	# 	name: "Model 3",
	# 	price: 39990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_3_192_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBW0_false_STUD_REAR34.jpg")
	# car_3_192.photo.attach(io: car_3_192_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBW0_false_STUD_REAR34.jpg")

	# car_3_193 = Product.create!(
	# 	name: "Model 3",
	# 	price: 39990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_3_193_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBW0_false_STUD_RIMCLOSEUP.jpg")
	# car_3_193.photo.attach(io: car_3_193_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBW0_false_STUD_RIMCLOSEUP.jpg")

	# car_3_194 = Product.create!(
	# 	name: "Model 3",
	# 	price: 39990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_3_194_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBW0_false_STUD_INTERIOR.jpg")
	# car_3_194.photo.attach(io: car_3_194_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBW0_false_STUD_INTERIOR.jpg")

	# car_3_195 = Product.create!(
	# 	name: "Model 3",
	# 	price: 49990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_3_195_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBW0_true_STUD_FRONT34.jpg")
	# car_3_195.photo.attach(io: car_3_195_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBW0_true_STUD_FRONT34.jpg")

	# car_3_196 = Product.create!(
	# 	name: "Model 3",
	# 	price: 49990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_3_196_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBW0_true_STUD_SIDEVIEW.jpg")
	# car_3_196.photo.attach(io: car_3_196_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBW0_true_STUD_SIDEVIEW.jpg")

	# car_3_197 = Product.create!(
	# 	name: "Model 3",
	# 	price: 49990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_3_197_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBW0_true_STUD_REAR34.jpg")
	# car_3_197.photo.attach(io: car_3_197_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBW0_true_STUD_REAR34.jpg")

	# car_3_198 = Product.create!(
	# 	name: "Model 3",
	# 	price: 49990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_3_198_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBW0_true_STUD_RIMCLOSEUP.jpg")
	# car_3_198.photo.attach(io: car_3_198_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBW0_true_STUD_RIMCLOSEUP.jpg")

	# car_3_199 = Product.create!(
	# 	name: "Model 3",
	# 	price: 49990,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Sport Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_3_199_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/model3/model_3_$MT314_$PPMR_$W41B_$IBW0_true_STUD_INTERIOR.jpg")
	# car_3_199.photo.attach(io: car_3_199_file, filename: "model_3_$MT314_$PPMR_$W41B_$IBW0_true_STUD_INTERIOR.jpg")

	# puts "Creating Model Y..."

	# car_y_0 = Product.create!(
	# 	name: "Model Y",
	# 	price: 47490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_0_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPB_false_FRONT34.jpg")
	# car_y_0.photo.attach(io: car_y_0_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPB_false_FRONT34.jpg")

	# car_y_1 = Product.create!(
	# 	name: "Model Y",
	# 	price: 47490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_1_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPB_false_SIDE.jpg")
	# car_y_1.photo.attach(io: car_y_1_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPB_false_SIDE.jpg")

	# car_y_2 = Product.create!(
	# 	name: "Model Y",
	# 	price: 47490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_2_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPB_false_REAR34.jpg")
	# car_y_2.photo.attach(io: car_y_2_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPB_false_REAR34.jpg")

	# car_y_3 = Product.create!(
	# 	name: "Model Y",
	# 	price: 47490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_3_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPB_false_RIMCLOSEUP.jpg")
	# car_y_3.photo.attach(io: car_y_3_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPB_false_RIMCLOSEUP.jpg")

	# car_y_4 = Product.create!(
	# 	name: "Model Y",
	# 	price: 47490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_4_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPB_false_INTERIOR.jpg")
	# car_y_4.photo.attach(io: car_y_4_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPB_false_INTERIOR.jpg")

	# car_y_5 = Product.create!(
	# 	name: "Model Y",
	# 	price: 57490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_5_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPB_true_FRONT34.jpg")
	# car_y_5.photo.attach(io: car_y_5_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPB_true_FRONT34.jpg")

	# car_y_6 = Product.create!(
	# 	name: "Model Y",
	# 	price: 57490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_6_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPB_true_SIDE.jpg")
	# car_y_6.photo.attach(io: car_y_6_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPB_true_SIDE.jpg")

	# car_y_7 = Product.create!(
	# 	name: "Model Y",
	# 	price: 57490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_7_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPB_true_REAR34.jpg")
	# car_y_7.photo.attach(io: car_y_7_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPB_true_REAR34.jpg")

	# car_y_8 = Product.create!(
	# 	name: "Model Y",
	# 	price: 57490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_8_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPB_true_RIMCLOSEUP.jpg")
	# car_y_8.photo.attach(io: car_y_8_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPB_true_RIMCLOSEUP.jpg")

	# car_y_9 = Product.create!(
	# 	name: "Model Y",
	# 	price: 57490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_9_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPB_true_INTERIOR.jpg")
	# car_y_9.photo.attach(io: car_y_9_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPB_true_INTERIOR.jpg")

	# car_y_10 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_10_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPW_false_FRONT34.jpg")
	# car_y_10.photo.attach(io: car_y_10_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPW_false_FRONT34.jpg")

	# car_y_11 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_11_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPW_false_SIDE.jpg")
	# car_y_11.photo.attach(io: car_y_11_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPW_false_SIDE.jpg")

	# car_y_12 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_12_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPW_false_REAR34.jpg")
	# car_y_12.photo.attach(io: car_y_12_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPW_false_REAR34.jpg")

	# car_y_13 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_13_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPW_false_RIMCLOSEUP.jpg")
	# car_y_13.photo.attach(io: car_y_13_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPW_false_RIMCLOSEUP.jpg")

	# car_y_14 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_14_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPW_false_INTERIOR.jpg")
	# car_y_14.photo.attach(io: car_y_14_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPW_false_INTERIOR.jpg")

	# car_y_15 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_15_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPW_true_FRONT34.jpg")
	# car_y_15.photo.attach(io: car_y_15_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPW_true_FRONT34.jpg")

	# car_y_16 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_16_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPW_true_SIDE.jpg")
	# car_y_16.photo.attach(io: car_y_16_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPW_true_SIDE.jpg")

	# car_y_17 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_17_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPW_true_REAR34.jpg")
	# car_y_17.photo.attach(io: car_y_17_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPW_true_REAR34.jpg")

	# car_y_18 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_18_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPW_true_RIMCLOSEUP.jpg")
	# car_y_18.photo.attach(io: car_y_18_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPW_true_RIMCLOSEUP.jpg")

	# car_y_19 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_19_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY19B_$INYPW_true_INTERIOR.jpg")
	# car_y_19.photo.attach(io: car_y_19_file, filename: "model_y_$MTY03_$PPSW_$WY19B_$INYPW_true_INTERIOR.jpg")

	# car_y_20 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_20_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPB_false_FRONT34.jpg")
	# car_y_20.photo.attach(io: car_y_20_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPB_false_FRONT34.jpg")

	# car_y_21 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_21_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPB_false_SIDE.jpg")
	# car_y_21.photo.attach(io: car_y_21_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPB_false_SIDE.jpg")

	# car_y_22 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_22_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPB_false_REAR34.jpg")
	# car_y_22.photo.attach(io: car_y_22_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPB_false_REAR34.jpg")

	# car_y_23 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_23_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPB_false_RIMCLOSEUP.jpg")
	# car_y_23.photo.attach(io: car_y_23_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPB_false_RIMCLOSEUP.jpg")

	# car_y_24 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_24_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPB_false_INTERIOR.jpg")
	# car_y_24.photo.attach(io: car_y_24_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPB_false_INTERIOR.jpg")

	# car_y_25 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_25_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPB_true_FRONT34.jpg")
	# car_y_25.photo.attach(io: car_y_25_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPB_true_FRONT34.jpg")

	# car_y_26 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_26_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPB_true_SIDE.jpg")
	# car_y_26.photo.attach(io: car_y_26_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPB_true_SIDE.jpg")

	# car_y_27 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_27_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPB_true_REAR34.jpg")
	# car_y_27.photo.attach(io: car_y_27_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPB_true_REAR34.jpg")

	# car_y_28 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_28_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPB_true_RIMCLOSEUP.jpg")
	# car_y_28.photo.attach(io: car_y_28_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPB_true_RIMCLOSEUP.jpg")

	# car_y_29 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_29_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPB_true_INTERIOR.jpg")
	# car_y_29.photo.attach(io: car_y_29_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPB_true_INTERIOR.jpg")

	# car_y_30 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_30_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPW_false_FRONT34.jpg")
	# car_y_30.photo.attach(io: car_y_30_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPW_false_FRONT34.jpg")

	# car_y_31 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_31_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPW_false_SIDE.jpg")
	# car_y_31.photo.attach(io: car_y_31_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPW_false_SIDE.jpg")

	# car_y_32 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_32_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPW_false_REAR34.jpg")
	# car_y_32.photo.attach(io: car_y_32_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPW_false_REAR34.jpg")

	# car_y_33 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_33_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPW_false_RIMCLOSEUP.jpg")
	# car_y_33.photo.attach(io: car_y_33_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPW_false_RIMCLOSEUP.jpg")

	# car_y_34 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_34_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPW_false_INTERIOR.jpg")
	# car_y_34.photo.attach(io: car_y_34_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPW_false_INTERIOR.jpg")

	# car_y_35 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_35_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPW_true_FRONT34.jpg")
	# car_y_35.photo.attach(io: car_y_35_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPW_true_FRONT34.jpg")

	# car_y_36 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_36_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPW_true_SIDE.jpg")
	# car_y_36.photo.attach(io: car_y_36_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPW_true_SIDE.jpg")

	# car_y_37 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_37_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPW_true_REAR34.jpg")
	# car_y_37.photo.attach(io: car_y_37_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPW_true_REAR34.jpg")

	# car_y_38 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_38_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPW_true_RIMCLOSEUP.jpg")
	# car_y_38.photo.attach(io: car_y_38_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPW_true_RIMCLOSEUP.jpg")

	# car_y_39 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Pearl White Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_39_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSW_$WY20P_$INYPW_true_INTERIOR.jpg")
	# car_y_39.photo.attach(io: car_y_39_file, filename: "model_y_$MTY03_$PPSW_$WY20P_$INYPW_true_INTERIOR.jpg")

	# car_y_40 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_40_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPB_false_FRONT34.jpg")
	# car_y_40.photo.attach(io: car_y_40_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPB_false_FRONT34.jpg")

	# car_y_41 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_41_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPB_false_SIDE.jpg")
	# car_y_41.photo.attach(io: car_y_41_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPB_false_SIDE.jpg")

	# car_y_42 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_42_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPB_false_REAR34.jpg")
	# car_y_42.photo.attach(io: car_y_42_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPB_false_REAR34.jpg")

	# car_y_43 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_43_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPB_false_RIMCLOSEUP.jpg")
	# car_y_43.photo.attach(io: car_y_43_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPB_false_RIMCLOSEUP.jpg")

	# car_y_44 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_44_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPB_false_INTERIOR.jpg")
	# car_y_44.photo.attach(io: car_y_44_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPB_false_INTERIOR.jpg")

	# car_y_45 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_45_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPB_true_FRONT34.jpg")
	# car_y_45.photo.attach(io: car_y_45_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPB_true_FRONT34.jpg")

	# car_y_46 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_46_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPB_true_SIDE.jpg")
	# car_y_46.photo.attach(io: car_y_46_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPB_true_SIDE.jpg")

	# car_y_47 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_47_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPB_true_REAR34.jpg")
	# car_y_47.photo.attach(io: car_y_47_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPB_true_REAR34.jpg")

	# car_y_48 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_48_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPB_true_RIMCLOSEUP.jpg")
	# car_y_48.photo.attach(io: car_y_48_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPB_true_RIMCLOSEUP.jpg")

	# car_y_49 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_49_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPB_true_INTERIOR.jpg")
	# car_y_49.photo.attach(io: car_y_49_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPB_true_INTERIOR.jpg")

	# car_y_50 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_50_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPW_false_FRONT34.jpg")
	# car_y_50.photo.attach(io: car_y_50_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPW_false_FRONT34.jpg")

	# car_y_51 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_51_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPW_false_SIDE.jpg")
	# car_y_51.photo.attach(io: car_y_51_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPW_false_SIDE.jpg")

	# car_y_52 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_52_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPW_false_REAR34.jpg")
	# car_y_52.photo.attach(io: car_y_52_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPW_false_REAR34.jpg")

	# car_y_53 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_53_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPW_false_RIMCLOSEUP.jpg")
	# car_y_53.photo.attach(io: car_y_53_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPW_false_RIMCLOSEUP.jpg")

	# car_y_54 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_54_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPW_false_INTERIOR.jpg")
	# car_y_54.photo.attach(io: car_y_54_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPW_false_INTERIOR.jpg")

	# car_y_55 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_55_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPW_true_FRONT34.jpg")
	# car_y_55.photo.attach(io: car_y_55_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPW_true_FRONT34.jpg")

	# car_y_56 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_56_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPW_true_SIDE.jpg")
	# car_y_56.photo.attach(io: car_y_56_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPW_true_SIDE.jpg")

	# car_y_57 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_57_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPW_true_REAR34.jpg")
	# car_y_57.photo.attach(io: car_y_57_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPW_true_REAR34.jpg")

	# car_y_58 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_58_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPW_true_RIMCLOSEUP.jpg")
	# car_y_58.photo.attach(io: car_y_58_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPW_true_RIMCLOSEUP.jpg")

	# car_y_59 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_59_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY19B_$INYPW_true_INTERIOR.jpg")
	# car_y_59.photo.attach(io: car_y_59_file, filename: "model_y_$MTY03_$PBSB_$WY19B_$INYPW_true_INTERIOR.jpg")

	# car_y_60 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_60_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPB_false_FRONT34.jpg")
	# car_y_60.photo.attach(io: car_y_60_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPB_false_FRONT34.jpg")

	# car_y_61 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_61_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPB_false_SIDE.jpg")
	# car_y_61.photo.attach(io: car_y_61_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPB_false_SIDE.jpg")

	# car_y_62 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_62_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPB_false_REAR34.jpg")
	# car_y_62.photo.attach(io: car_y_62_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPB_false_REAR34.jpg")

	# car_y_63 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_63_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPB_false_RIMCLOSEUP.jpg")
	# car_y_63.photo.attach(io: car_y_63_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPB_false_RIMCLOSEUP.jpg")

	# car_y_64 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_64_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPB_false_INTERIOR.jpg")
	# car_y_64.photo.attach(io: car_y_64_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPB_false_INTERIOR.jpg")

	# car_y_65 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_65_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPB_true_FRONT34.jpg")
	# car_y_65.photo.attach(io: car_y_65_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPB_true_FRONT34.jpg")

	# car_y_66 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_66_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPB_true_SIDE.jpg")
	# car_y_66.photo.attach(io: car_y_66_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPB_true_SIDE.jpg")

	# car_y_67 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_67_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPB_true_REAR34.jpg")
	# car_y_67.photo.attach(io: car_y_67_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPB_true_REAR34.jpg")

	# car_y_68 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_68_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPB_true_RIMCLOSEUP.jpg")
	# car_y_68.photo.attach(io: car_y_68_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPB_true_RIMCLOSEUP.jpg")

	# car_y_69 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Solid Black",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_69_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPB_true_INTERIOR.jpg")
	# car_y_69.photo.attach(io: car_y_69_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPB_true_INTERIOR.jpg")

	# car_y_70 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_70_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPW_false_FRONT34.jpg")
	# car_y_70.photo.attach(io: car_y_70_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPW_false_FRONT34.jpg")

	# car_y_71 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_71_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPW_false_SIDE.jpg")
	# car_y_71.photo.attach(io: car_y_71_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPW_false_SIDE.jpg")

	# car_y_72 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_72_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPW_false_REAR34.jpg")
	# car_y_72.photo.attach(io: car_y_72_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPW_false_REAR34.jpg")

	# car_y_73 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_73_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPW_false_RIMCLOSEUP.jpg")
	# car_y_73.photo.attach(io: car_y_73_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPW_false_RIMCLOSEUP.jpg")

	# car_y_74 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_74_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPW_false_INTERIOR.jpg")
	# car_y_74.photo.attach(io: car_y_74_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPW_false_INTERIOR.jpg")

	# car_y_75 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_75_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPW_true_FRONT34.jpg")
	# car_y_75.photo.attach(io: car_y_75_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPW_true_FRONT34.jpg")

	# car_y_76 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_76_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPW_true_SIDE.jpg")
	# car_y_76.photo.attach(io: car_y_76_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPW_true_SIDE.jpg")

	# car_y_77 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_77_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPW_true_REAR34.jpg")
	# car_y_77.photo.attach(io: car_y_77_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPW_true_REAR34.jpg")

	# car_y_78 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_78_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPW_true_RIMCLOSEUP.jpg")
	# car_y_78.photo.attach(io: car_y_78_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPW_true_RIMCLOSEUP.jpg")

	# car_y_79 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Solid Black",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_79_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PBSB_$WY20P_$INYPW_true_INTERIOR.jpg")
	# car_y_79.photo.attach(io: car_y_79_file, filename: "model_y_$MTY03_$PBSB_$WY20P_$INYPW_true_INTERIOR.jpg")

	# car_y_80 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_80_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPB_false_FRONT34.jpg")
	# car_y_80.photo.attach(io: car_y_80_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPB_false_FRONT34.jpg")

	# car_y_81 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_81_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPB_false_SIDE.jpg")
	# car_y_81.photo.attach(io: car_y_81_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPB_false_SIDE.jpg")

	# car_y_82 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_82_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPB_false_REAR34.jpg")
	# car_y_82.photo.attach(io: car_y_82_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPB_false_REAR34.jpg")

	# car_y_83 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_83_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPB_false_RIMCLOSEUP.jpg")
	# car_y_83.photo.attach(io: car_y_83_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPB_false_RIMCLOSEUP.jpg")

	# car_y_84 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_84_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPB_false_INTERIOR.jpg")
	# car_y_84.photo.attach(io: car_y_84_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPB_false_INTERIOR.jpg")

	# car_y_85 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_85_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPB_true_FRONT34.jpg")
	# car_y_85.photo.attach(io: car_y_85_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPB_true_FRONT34.jpg")

	# car_y_86 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_86_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPB_true_SIDE.jpg")
	# car_y_86.photo.attach(io: car_y_86_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPB_true_SIDE.jpg")

	# car_y_87 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_87_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPB_true_REAR34.jpg")
	# car_y_87.photo.attach(io: car_y_87_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPB_true_REAR34.jpg")

	# car_y_88 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_88_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPB_true_RIMCLOSEUP.jpg")
	# car_y_88.photo.attach(io: car_y_88_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPB_true_RIMCLOSEUP.jpg")

	# car_y_89 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_89_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPB_true_INTERIOR.jpg")
	# car_y_89.photo.attach(io: car_y_89_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPB_true_INTERIOR.jpg")

	# car_y_90 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_90_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPW_false_FRONT34.jpg")
	# car_y_90.photo.attach(io: car_y_90_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPW_false_FRONT34.jpg")

	# car_y_91 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_91_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPW_false_SIDE.jpg")
	# car_y_91.photo.attach(io: car_y_91_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPW_false_SIDE.jpg")

	# car_y_92 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_92_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPW_false_REAR34.jpg")
	# car_y_92.photo.attach(io: car_y_92_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPW_false_REAR34.jpg")

	# car_y_93 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_93_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPW_false_RIMCLOSEUP.jpg")
	# car_y_93.photo.attach(io: car_y_93_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPW_false_RIMCLOSEUP.jpg")

	# car_y_94 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_94_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPW_false_INTERIOR.jpg")
	# car_y_94.photo.attach(io: car_y_94_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPW_false_INTERIOR.jpg")

	# car_y_95 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_95_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPW_true_FRONT34.jpg")
	# car_y_95.photo.attach(io: car_y_95_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPW_true_FRONT34.jpg")

	# car_y_96 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_96_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPW_true_SIDE.jpg")
	# car_y_96.photo.attach(io: car_y_96_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPW_true_SIDE.jpg")

	# car_y_97 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_97_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPW_true_REAR34.jpg")
	# car_y_97.photo.attach(io: car_y_97_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPW_true_REAR34.jpg")

	# car_y_98 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_98_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPW_true_RIMCLOSEUP.jpg")
	# car_y_98.photo.attach(io: car_y_98_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPW_true_RIMCLOSEUP.jpg")

	# car_y_99 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_99_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY19B_$INYPW_true_INTERIOR.jpg")
	# car_y_99.photo.attach(io: car_y_99_file, filename: "model_y_$MTY03_$PMNG_$WY19B_$INYPW_true_INTERIOR.jpg")

	# car_y_100 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_100_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPB_false_FRONT34.jpg")
	# car_y_100.photo.attach(io: car_y_100_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPB_false_FRONT34.jpg")

	# puts "Creating Model Y_1..."

	# car_y_101 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_101_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPB_false_SIDE.jpg")
	# car_y_101.photo.attach(io: car_y_101_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPB_false_SIDE.jpg")

	# car_y_102 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_102_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPB_false_REAR34.jpg")
	# car_y_102.photo.attach(io: car_y_102_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPB_false_REAR34.jpg")

	# car_y_103 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_103_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPB_false_RIMCLOSEUP.jpg")
	# car_y_103.photo.attach(io: car_y_103_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPB_false_RIMCLOSEUP.jpg")

	# car_y_104 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_104_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPB_false_INTERIOR.jpg")
	# car_y_104.photo.attach(io: car_y_104_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPB_false_INTERIOR.jpg")

	# car_y_105 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_105_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPB_true_FRONT34.jpg")
	# car_y_105.photo.attach(io: car_y_105_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPB_true_FRONT34.jpg")

	# car_y_106 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_106_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPB_true_SIDE.jpg")
	# car_y_106.photo.attach(io: car_y_106_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPB_true_SIDE.jpg")

	# car_y_107 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_107_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPB_true_REAR34.jpg")
	# car_y_107.photo.attach(io: car_y_107_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPB_true_REAR34.jpg")

	# car_y_108 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_108_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPB_true_RIMCLOSEUP.jpg")
	# car_y_108.photo.attach(io: car_y_108_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPB_true_RIMCLOSEUP.jpg")

	# car_y_109 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_109_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPB_true_INTERIOR.jpg")
	# car_y_109.photo.attach(io: car_y_109_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPB_true_INTERIOR.jpg")

	# car_y_110 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_110_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPW_false_FRONT34.jpg")
	# car_y_110.photo.attach(io: car_y_110_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPW_false_FRONT34.jpg")

	# car_y_111 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_111_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPW_false_SIDE.jpg")
	# car_y_111.photo.attach(io: car_y_111_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPW_false_SIDE.jpg")

	# car_y_112 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_112_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPW_false_REAR34.jpg")
	# car_y_112.photo.attach(io: car_y_112_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPW_false_REAR34.jpg")

	# car_y_113 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_113_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPW_false_RIMCLOSEUP.jpg")
	# car_y_113.photo.attach(io: car_y_113_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPW_false_RIMCLOSEUP.jpg")

	# car_y_114 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_114_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPW_false_INTERIOR.jpg")
	# car_y_114.photo.attach(io: car_y_114_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPW_false_INTERIOR.jpg")

	# car_y_115 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_115_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPW_true_FRONT34.jpg")
	# car_y_115.photo.attach(io: car_y_115_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPW_true_FRONT34.jpg")

	# car_y_116 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_116_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPW_true_SIDE.jpg")
	# car_y_116.photo.attach(io: car_y_116_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPW_true_SIDE.jpg")

	# car_y_117 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_117_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPW_true_REAR34.jpg")
	# car_y_117.photo.attach(io: car_y_117_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPW_true_REAR34.jpg")

	# car_y_118 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_118_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPW_true_RIMCLOSEUP.jpg")
	# car_y_118.photo.attach(io: car_y_118_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPW_true_RIMCLOSEUP.jpg")

	# car_y_119 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Midnight Silver Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_119_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PMNG_$WY20P_$INYPW_true_INTERIOR.jpg")
	# car_y_119.photo.attach(io: car_y_119_file, filename: "model_y_$MTY03_$PMNG_$WY20P_$INYPW_true_INTERIOR.jpg")

	# car_y_120 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_120_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPB_false_FRONT34.jpg")
	# car_y_120.photo.attach(io: car_y_120_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPB_false_FRONT34.jpg")

	# car_y_121 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_121_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPB_false_SIDE.jpg")
	# car_y_121.photo.attach(io: car_y_121_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPB_false_SIDE.jpg")

	# car_y_122 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_122_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPB_false_REAR34.jpg")
	# car_y_122.photo.attach(io: car_y_122_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPB_false_REAR34.jpg")

	# car_y_123 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_123_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPB_false_RIMCLOSEUP.jpg")
	# car_y_123.photo.attach(io: car_y_123_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPB_false_RIMCLOSEUP.jpg")

	# car_y_124 = Product.create!(
	# 	name: "Model Y",
	# 	price: 48490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_124_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPB_false_INTERIOR.jpg")
	# car_y_124.photo.attach(io: car_y_124_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPB_false_INTERIOR.jpg")

	# car_y_125 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_125_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPB_true_FRONT34.jpg")
	# car_y_125.photo.attach(io: car_y_125_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPB_true_FRONT34.jpg")

	# car_y_126 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_126_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPB_true_SIDE.jpg")
	# car_y_126.photo.attach(io: car_y_126_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPB_true_SIDE.jpg")

	# car_y_127 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_127_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPB_true_REAR34.jpg")
	# car_y_127.photo.attach(io: car_y_127_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPB_true_REAR34.jpg")

	# car_y_128 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_128_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPB_true_RIMCLOSEUP.jpg")
	# car_y_128.photo.attach(io: car_y_128_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPB_true_RIMCLOSEUP.jpg")

	# car_y_129 = Product.create!(
	# 	name: "Model Y",
	# 	price: 58490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_129_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPB_true_INTERIOR.jpg")
	# car_y_129.photo.attach(io: car_y_129_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPB_true_INTERIOR.jpg")

	# car_y_130 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_130_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPW_false_FRONT34.jpg")
	# car_y_130.photo.attach(io: car_y_130_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPW_false_FRONT34.jpg")

	# car_y_131 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_131_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPW_false_SIDE.jpg")
	# car_y_131.photo.attach(io: car_y_131_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPW_false_SIDE.jpg")

	# car_y_132 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_132_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPW_false_REAR34.jpg")
	# car_y_132.photo.attach(io: car_y_132_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPW_false_REAR34.jpg")

	# car_y_133 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_133_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPW_false_RIMCLOSEUP.jpg")
	# car_y_133.photo.attach(io: car_y_133_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPW_false_RIMCLOSEUP.jpg")

	# car_y_134 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_134_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPW_false_INTERIOR.jpg")
	# car_y_134.photo.attach(io: car_y_134_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPW_false_INTERIOR.jpg")

	# car_y_135 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_135_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPW_true_FRONT34.jpg")
	# car_y_135.photo.attach(io: car_y_135_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPW_true_FRONT34.jpg")

	# car_y_136 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_136_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPW_true_SIDE.jpg")
	# car_y_136.photo.attach(io: car_y_136_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPW_true_SIDE.jpg")

	# car_y_137 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_137_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPW_true_REAR34.jpg")
	# car_y_137.photo.attach(io: car_y_137_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPW_true_REAR34.jpg")

	# car_y_138 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_138_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPW_true_RIMCLOSEUP.jpg")
	# car_y_138.photo.attach(io: car_y_138_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPW_true_RIMCLOSEUP.jpg")

	# car_y_139 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_139_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY19B_$INYPW_true_INTERIOR.jpg")
	# car_y_139.photo.attach(io: car_y_139_file, filename: "model_y_$MTY03_$PPSB_$WY19B_$INYPW_true_INTERIOR.jpg")

	# car_y_140 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_140_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPB_false_FRONT34.jpg")
	# car_y_140.photo.attach(io: car_y_140_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPB_false_FRONT34.jpg")

	# car_y_141 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_141_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPB_false_SIDE.jpg")
	# car_y_141.photo.attach(io: car_y_141_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPB_false_SIDE.jpg")

	# car_y_142 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_142_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPB_false_REAR34.jpg")
	# car_y_142.photo.attach(io: car_y_142_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPB_false_REAR34.jpg")

	# car_y_143 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_143_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPB_false_RIMCLOSEUP.jpg")
	# car_y_143.photo.attach(io: car_y_143_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPB_false_RIMCLOSEUP.jpg")

	# car_y_144 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_144_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPB_false_INTERIOR.jpg")
	# car_y_144.photo.attach(io: car_y_144_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPB_false_INTERIOR.jpg")

	# car_y_145 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_145_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPB_true_FRONT34.jpg")
	# car_y_145.photo.attach(io: car_y_145_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPB_true_FRONT34.jpg")

	# car_y_146 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_146_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPB_true_SIDE.jpg")
	# car_y_146.photo.attach(io: car_y_146_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPB_true_SIDE.jpg")

	# car_y_147 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_147_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPB_true_REAR34.jpg")
	# car_y_147.photo.attach(io: car_y_147_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPB_true_REAR34.jpg")

	# car_y_148 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_148_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPB_true_RIMCLOSEUP.jpg")
	# car_y_148.photo.attach(io: car_y_148_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPB_true_RIMCLOSEUP.jpg")

	# car_y_149 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_149_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPB_true_INTERIOR.jpg")
	# car_y_149.photo.attach(io: car_y_149_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPB_true_INTERIOR.jpg")

	# car_y_150 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_150_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPW_false_FRONT34.jpg")
	# car_y_150.photo.attach(io: car_y_150_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPW_false_FRONT34.jpg")

	# car_y_151 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_151_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPW_false_SIDE.jpg")
	# car_y_151.photo.attach(io: car_y_151_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPW_false_SIDE.jpg")

	# car_y_152 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_152_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPW_false_REAR34.jpg")
	# car_y_152.photo.attach(io: car_y_152_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPW_false_REAR34.jpg")

	# car_y_153 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_153_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPW_false_RIMCLOSEUP.jpg")
	# car_y_153.photo.attach(io: car_y_153_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPW_false_RIMCLOSEUP.jpg")

	# car_y_154 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_154_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPW_false_INTERIOR.jpg")
	# car_y_154.photo.attach(io: car_y_154_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPW_false_INTERIOR.jpg")

	# car_y_155 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_155_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPW_true_FRONT34.jpg")
	# car_y_155.photo.attach(io: car_y_155_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPW_true_FRONT34.jpg")

	# car_y_156 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_156_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPW_true_SIDE.jpg")
	# car_y_156.photo.attach(io: car_y_156_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPW_true_SIDE.jpg")

	# car_y_157 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_157_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPW_true_REAR34.jpg")
	# car_y_157.photo.attach(io: car_y_157_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPW_true_REAR34.jpg")

	# car_y_158 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_158_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPW_true_RIMCLOSEUP.jpg")
	# car_y_158.photo.attach(io: car_y_158_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPW_true_RIMCLOSEUP.jpg")

	# car_y_159 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Deep Blue Metallic",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_159_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPSB_$WY20P_$INYPW_true_INTERIOR.jpg")
	# car_y_159.photo.attach(io: car_y_159_file, filename: "model_y_$MTY03_$PPSB_$WY20P_$INYPW_true_INTERIOR.jpg")

	# car_y_160 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_160_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPB_false_FRONT34.jpg")
	# car_y_160.photo.attach(io: car_y_160_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPB_false_FRONT34.jpg")

	# car_y_161 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_161_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPB_false_SIDE.jpg")
	# car_y_161.photo.attach(io: car_y_161_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPB_false_SIDE.jpg")

	# car_y_162 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_162_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPB_false_REAR34.jpg")
	# car_y_162.photo.attach(io: car_y_162_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPB_false_REAR34.jpg")

	# car_y_163 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_163_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPB_false_RIMCLOSEUP.jpg")
	# car_y_163.photo.attach(io: car_y_163_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPB_false_RIMCLOSEUP.jpg")

	# car_y_164 = Product.create!(
	# 	name: "Model Y",
	# 	price: 49490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_164_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPB_false_INTERIOR.jpg")
	# car_y_164.photo.attach(io: car_y_164_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPB_false_INTERIOR.jpg")

	# car_y_165 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_165_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPB_true_FRONT34.jpg")
	# car_y_165.photo.attach(io: car_y_165_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPB_true_FRONT34.jpg")

	# car_y_166 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_166_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPB_true_SIDE.jpg")
	# car_y_166.photo.attach(io: car_y_166_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPB_true_SIDE.jpg")

	# car_y_167 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_167_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPB_true_REAR34.jpg")
	# car_y_167.photo.attach(io: car_y_167_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPB_true_REAR34.jpg")

	# car_y_168 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_168_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPB_true_RIMCLOSEUP.jpg")
	# car_y_168.photo.attach(io: car_y_168_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPB_true_RIMCLOSEUP.jpg")

	# car_y_169 = Product.create!(
	# 	name: "Model Y",
	# 	price: 59490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_169_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPB_true_INTERIOR.jpg")
	# car_y_169.photo.attach(io: car_y_169_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPB_true_INTERIOR.jpg")

	# car_y_170 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_170_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPW_false_FRONT34.jpg")
	# car_y_170.photo.attach(io: car_y_170_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPW_false_FRONT34.jpg")

	# car_y_171 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_171_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPW_false_SIDE.jpg")
	# car_y_171.photo.attach(io: car_y_171_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPW_false_SIDE.jpg")

	# car_y_172 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_172_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPW_false_REAR34.jpg")
	# car_y_172.photo.attach(io: car_y_172_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPW_false_REAR34.jpg")

	# car_y_173 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_173_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPW_false_RIMCLOSEUP.jpg")
	# car_y_173.photo.attach(io: car_y_173_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPW_false_RIMCLOSEUP.jpg")

	# car_y_174 = Product.create!(
	# 	name: "Model Y",
	# 	price: 50490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_174_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPW_false_INTERIOR.jpg")
	# car_y_174.photo.attach(io: car_y_174_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPW_false_INTERIOR.jpg")

	# car_y_175 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_175_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPW_true_FRONT34.jpg")
	# car_y_175.photo.attach(io: car_y_175_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPW_true_FRONT34.jpg")

	# car_y_176 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_176_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPW_true_SIDE.jpg")
	# car_y_176.photo.attach(io: car_y_176_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPW_true_SIDE.jpg")

	# car_y_177 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_177_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPW_true_REAR34.jpg")
	# car_y_177.photo.attach(io: car_y_177_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPW_true_REAR34.jpg")

	# car_y_178 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_178_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPW_true_RIMCLOSEUP.jpg")
	# car_y_178.photo.attach(io: car_y_178_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPW_true_RIMCLOSEUP.jpg")

	# car_y_179 = Product.create!(
	# 	name: "Model Y",
	# 	price: 60490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "19\" Gemini Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_179_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY19B_$INYPW_true_INTERIOR.jpg")
	# car_y_179.photo.attach(io: car_y_179_file, filename: "model_y_$MTY03_$PPMR_$WY19B_$INYPW_true_INTERIOR.jpg")

	# car_y_180 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_180_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPB_false_FRONT34.jpg")
	# car_y_180.photo.attach(io: car_y_180_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPB_false_FRONT34.jpg")

	# car_y_181 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_181_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPB_false_SIDE.jpg")
	# car_y_181.photo.attach(io: car_y_181_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPB_false_SIDE.jpg")

	# car_y_182 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_182_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPB_false_REAR34.jpg")
	# car_y_182.photo.attach(io: car_y_182_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPB_false_REAR34.jpg")

	# car_y_183 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_183_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPB_false_RIMCLOSEUP.jpg")
	# car_y_183.photo.attach(io: car_y_183_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPB_false_RIMCLOSEUP.jpg")

	# car_y_184 = Product.create!(
	# 	name: "Model Y",
	# 	price: 51490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_184_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPB_false_INTERIOR.jpg")
	# car_y_184.photo.attach(io: car_y_184_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPB_false_INTERIOR.jpg")

	# car_y_185 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_185_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPB_true_FRONT34.jpg")
	# car_y_185.photo.attach(io: car_y_185_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPB_true_FRONT34.jpg")

	# car_y_186 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_186_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPB_true_SIDE.jpg")
	# car_y_186.photo.attach(io: car_y_186_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPB_true_SIDE.jpg")

	# car_y_187 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_187_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPB_true_REAR34.jpg")
	# car_y_187.photo.attach(io: car_y_187_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPB_true_REAR34.jpg")

	# car_y_188 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_188_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPB_true_RIMCLOSEUP.jpg")
	# car_y_188.photo.attach(io: car_y_188_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPB_true_RIMCLOSEUP.jpg")

	# car_y_189 = Product.create!(
	# 	name: "Model Y",
	# 	price: 61490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "All Black",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_189_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPB_true_INTERIOR.jpg")
	# car_y_189.photo.attach(io: car_y_189_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPB_true_INTERIOR.jpg")

	# car_y_190 = Product.create!(
	# 	name: "Model Y",
	# 	price: 52490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "front",
	# )
	# car_y_190_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPW_false_FRONT34.jpg")
	# car_y_190.photo.attach(io: car_y_190_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPW_false_FRONT34.jpg")

	# car_y_191 = Product.create!(
	# 	name: "Model Y",
	# 	price: 52490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "side",
	# )
	# car_y_191_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPW_false_SIDE.jpg")
	# car_y_191.photo.attach(io: car_y_191_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPW_false_SIDE.jpg")

	# car_y_192 = Product.create!(
	# 	name: "Model Y",
	# 	price: 52490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rear",
	# )
	# car_y_192_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPW_false_REAR34.jpg")
	# car_y_192.photo.attach(io: car_y_192_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPW_false_REAR34.jpg")

	# car_y_193 = Product.create!(
	# 	name: "Model Y",
	# 	price: 52490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "rim",
	# )
	# car_y_193_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPW_false_RIMCLOSEUP.jpg")
	# car_y_193.photo.attach(io: car_y_193_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPW_false_RIMCLOSEUP.jpg")

	# car_y_194 = Product.create!(
	# 	name: "Model Y",
	# 	price: 52490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: false,
	# 	view: "interior",
	# )
	# car_y_194_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPW_false_INTERIOR.jpg")
	# car_y_194.photo.attach(io: car_y_194_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPW_false_INTERIOR.jpg")

	# car_y_195 = Product.create!(
	# 	name: "Model Y",
	# 	price: 62490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "front",
	# )
	# car_y_195_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPW_true_FRONT34.jpg")
	# car_y_195.photo.attach(io: car_y_195_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPW_true_FRONT34.jpg")

	# car_y_196 = Product.create!(
	# 	name: "Model Y",
	# 	price: 62490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "side",
	# )
	# car_y_196_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPW_true_SIDE.jpg")
	# car_y_196.photo.attach(io: car_y_196_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPW_true_SIDE.jpg")

	# car_y_197 = Product.create!(
	# 	name: "Model Y",
	# 	price: 62490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rear",
	# )
	# car_y_197_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPW_true_REAR34.jpg")
	# car_y_197.photo.attach(io: car_y_197_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPW_true_REAR34.jpg")

	# car_y_198 = Product.create!(
	# 	name: "Model Y",
	# 	price: 62490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "rim",
	# )
	# car_y_198_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPW_true_RIMCLOSEUP.jpg")
	# car_y_198.photo.attach(io: car_y_198_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPW_true_RIMCLOSEUP.jpg")

	# car_y_199 = Product.create!(
	# 	name: "Model Y",
	# 	price: 62490,
	# 	exterior: "Red Multi-Coat",
	# 	interior: "Black and White",
	# 	wheel_type: "20\" Induction Wheels",
	# 	self_driving: true,
	# 	view: "interior",
	# )
	# car_y_199_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/modely/model_y_$MTY03_$PPMR_$WY20P_$INYPW_true_INTERIOR.jpg")
	# car_y_199.photo.attach(io: car_y_199_file, filename: "model_y_$MTY03_$PPMR_$WY20P_$INYPW_true_INTERIOR.jpg")
end