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
  Product.destroy_all

  puts "Creating Users..."

  demo = User.create!(
    username: "demouser",
    password: "password",
    email: "demouser@gmail.com",
    first_name: "demo",
    last_name: "user"
  )

  file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/spaceman.jpg")

  demo.photo.attach(io: file, filename: 'spaceman.jpg')

  puts "Creating Model S..."

  car0 = Product.create!(
		name: "Model S",
		price: 78490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car0_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_false_FRONT34.jpg")
	car0.photo.attach(io: car0_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_false_FRONT34.jpg")

	car1 = Product.create!(
		name: "Model S",
		price: 78490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rear",
	)
	car1_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_false_REAR34.jpg")
	car1.photo.attach(io: car1_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_false_REAR34.jpg")

	car2 = Product.create!(
		name: "Model S",
		price: 78490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "side",
	)
	car2_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_false_SIDE.jpg")
	car2.photo.attach(io: car2_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_false_SIDE.jpg")

	car3 = Product.create!(
		name: "Model S",
		price: 78490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rim",
	)
	car3_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_false_RIMCLOSEUP.jpg")
	car3.photo.attach(io: car3_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_false_RIMCLOSEUP.jpg")

	car4 = Product.create!(
		name: "Model S",
		price: 78490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "interior",
	)
	car4_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_false_INTERIOR.jpg")
	car4.photo.attach(io: car4_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_false_INTERIOR.jpg")

	car2 = Product.create!(
		name: "Model S",
		price: 88490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "front",
	)
	car2_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_true_FRONT34.jpg")
	car2.photo.attach(io: car2_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_true_FRONT34.jpg")

	car3 = Product.create!(
		name: "Model S",
		price: 88490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rear",
	)
	car3_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_true_REAR34.jpg")
	car3.photo.attach(io: car3_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_true_REAR34.jpg")

	car4 = Product.create!(
		name: "Model S",
		price: 88490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "side",
	)
	car4_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_true_SIDE.jpg")
	car4.photo.attach(io: car4_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_true_SIDE.jpg")

	car5 = Product.create!(
		name: "Model S",
		price: 88490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rim",
	)
	car5_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_true_RIMCLOSEUP.jpg")
	car5.photo.attach(io: car5_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_true_RIMCLOSEUP.jpg")

	car6 = Product.create!(
		name: "Model S",
		price: 88490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "interior",
	)
	car6_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_true_INTERIOR.jpg")
	car6.photo.attach(io: car6_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_true_INTERIOR.jpg")

	car10 = Product.create!(
		name: "Model S",
		price: 80490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car10_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_false_FRONT34.jpg")
	car10.photo.attach(io: car10_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_false_FRONT34.jpg")

	car11 = Product.create!(
		name: "Model S",
		price: 80490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rear",
	)
	car11_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_false_REAR34.jpg")
	car11.photo.attach(io: car11_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_false_REAR34.jpg")

	car12 = Product.create!(
		name: "Model S",
		price: 80490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "side",
	)
	car12_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_false_SIDE.jpg")
	car12.photo.attach(io: car12_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_false_SIDE.jpg")

	car13 = Product.create!(
		name: "Model S",
		price: 80490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rim",
	)
	car13_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_false_RIMCLOSEUP.jpg")
	car13.photo.attach(io: car13_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_false_RIMCLOSEUP.jpg")

	car14 = Product.create!(
		name: "Model S",
		price: 80490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "interior",
	)
	car14_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_false_INTERIOR.jpg")
	car14.photo.attach(io: car14_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_false_INTERIOR.jpg")

	car12 = Product.create!(
		name: "Model S",
		price: 90490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "front",
	)
	car12_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_true_FRONT34.jpg")
	car12.photo.attach(io: car12_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_true_FRONT34.jpg")

	car13 = Product.create!(
		name: "Model S",
		price: 90490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rear",
	)
	car13_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_true_REAR34.jpg")
	car13.photo.attach(io: car13_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_true_REAR34.jpg")

	car14 = Product.create!(
		name: "Model S",
		price: 90490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "side",
	)
	car14_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_true_SIDE.jpg")
	car14.photo.attach(io: car14_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_true_SIDE.jpg")

	car15 = Product.create!(
		name: "Model S",
		price: 90490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rim",
	)
	car15_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_true_RIMCLOSEUP.jpg")
	car15.photo.attach(io: car15_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_true_RIMCLOSEUP.jpg")

	car16 = Product.create!(
		name: "Model S",
		price: 90490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "interior",
	)
	car16_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IWW00_true_INTERIOR.jpg")
	car16.photo.attach(io: car16_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IWW00_true_INTERIOR.jpg")

	car20 = Product.create!(
		name: "Model S",
		price: 80490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car20_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_false_FRONT34.jpg")
	car20.photo.attach(io: car20_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_false_FRONT34.jpg")

	car21 = Product.create!(
		name: "Model S",
		price: 80490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rear",
	)
	car21_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_false_REAR34.jpg")
	car21.photo.attach(io: car21_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_false_REAR34.jpg")

	car22 = Product.create!(
		name: "Model S",
		price: 80490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "side",
	)
	car22_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_false_SIDE.jpg")
	car22.photo.attach(io: car22_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_false_SIDE.jpg")

	car23 = Product.create!(
		name: "Model S",
		price: 80490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rim",
	)
	car23_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_false_RIMCLOSEUP.jpg")
	car23.photo.attach(io: car23_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_false_RIMCLOSEUP.jpg")

	car24 = Product.create!(
		name: "Model S",
		price: 80490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "interior",
	)
	car24_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_false_INTERIOR.jpg")
	car24.photo.attach(io: car24_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_false_INTERIOR.jpg")

	car22 = Product.create!(
		name: "Model S",
		price: 90490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "front",
	)
	car22_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_true_FRONT34.jpg")
	car22.photo.attach(io: car22_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_true_FRONT34.jpg")

	car23 = Product.create!(
		name: "Model S",
		price: 90490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rear",
	)
	car23_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_true_REAR34.jpg")
	car23.photo.attach(io: car23_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_true_REAR34.jpg")

	car24 = Product.create!(
		name: "Model S",
		price: 90490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "side",
	)
	car24_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_true_SIDE.jpg")
	car24.photo.attach(io: car24_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_true_SIDE.jpg")

	car25 = Product.create!(
		name: "Model S",
		price: 90490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rim",
	)
	car25_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_true_RIMCLOSEUP.jpg")
	car25.photo.attach(io: car25_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_true_RIMCLOSEUP.jpg")

	car26 = Product.create!(
		name: "Model S",
		price: 90490,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "interior",
	)
	car26_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$ICW00_true_INTERIOR.jpg")
	car26.photo.attach(io: car26_file, filename: "model_s_$MTS10_$PPSW_$WS90_$ICW00_true_INTERIOR.jpg")

	car30 = Product.create!(
		name: "Model S",
		price: 82990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "front",
	)
	car30_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_false_FRONT34.jpg")
	car30.photo.attach(io: car30_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_false_FRONT34.jpg")

	car31 = Product.create!(
		name: "Model S",
		price: 82990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rear",
	)
	car31_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_false_REAR34.jpg")
	car31.photo.attach(io: car31_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_false_REAR34.jpg")

	car32 = Product.create!(
		name: "Model S",
		price: 82990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "side",
	)
	car32_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_false_SIDE.jpg")
	car32.photo.attach(io: car32_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_false_SIDE.jpg")

	car33 = Product.create!(
		name: "Model S",
		price: 82990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rim",
	)
	car33_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_false_RIMCLOSEUP.jpg")
	car33.photo.attach(io: car33_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_false_RIMCLOSEUP.jpg")

	car34 = Product.create!(
		name: "Model S",
		price: 82990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "interior",
	)
	car34_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_false_INTERIOR.jpg")
	car34.photo.attach(io: car34_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_false_INTERIOR.jpg")

	car32 = Product.create!(
		name: "Model S",
		price: 92990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "front",
	)
	car32_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_true_FRONT34.jpg")
	car32.photo.attach(io: car32_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_true_FRONT34.jpg")

	car33 = Product.create!(
		name: "Model S",
		price: 92990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rear",
	)
	car33_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_true_REAR34.jpg")
	car33.photo.attach(io: car33_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_true_REAR34.jpg")

	car34 = Product.create!(
		name: "Model S",
		price: 92990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "side",
	)
	car34_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_true_SIDE.jpg")
	car34.photo.attach(io: car34_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_true_SIDE.jpg")

	car35 = Product.create!(
		name: "Model S",
		price: 92990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rim",
	)
	car35_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_true_RIMCLOSEUP.jpg")
	car35.photo.attach(io: car35_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_true_RIMCLOSEUP.jpg")

	car36 = Product.create!(
		name: "Model S",
		price: 92990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "interior",
	)
	car36_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IBE00_true_INTERIOR.jpg")
	car36.photo.attach(io: car36_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IBE00_true_INTERIOR.jpg")

	car40 = Product.create!(
		name: "Model S",
		price: 84990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "front",
	)
	car40_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_false_FRONT34.jpg")
	car40.photo.attach(io: car40_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_false_FRONT34.jpg")

	car41 = Product.create!(
		name: "Model S",
		price: 84990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rear",
	)
	car41_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_false_REAR34.jpg")
	car41.photo.attach(io: car41_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_false_REAR34.jpg")

	car42 = Product.create!(
		name: "Model S",
		price: 84990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "side",
	)
	car42_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_false_SIDE.jpg")
	car42.photo.attach(io: car42_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_false_SIDE.jpg")

	car43 = Product.create!(
		name: "Model S",
		price: 84990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rim",
	)
	car43_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_false_RIMCLOSEUP.jpg")
	car43.photo.attach(io: car43_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_false_RIMCLOSEUP.jpg")

	car44 = Product.create!(
		name: "Model S",
		price: 84990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "interior",
	)
	car44_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_false_INTERIOR.jpg")
	car44.photo.attach(io: car44_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_false_INTERIOR.jpg")

	car42 = Product.create!(
		name: "Model S",
		price: 94990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "front",
	)
	car42_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_true_FRONT34.jpg")
	car42.photo.attach(io: car42_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_true_FRONT34.jpg")

	car43 = Product.create!(
		name: "Model S",
		price: 94990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rear",
	)
	car43_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_true_REAR34.jpg")
	car43.photo.attach(io: car43_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_true_REAR34.jpg")

	car44 = Product.create!(
		name: "Model S",
		price: 94990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "side",
	)
	car44_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_true_SIDE.jpg")
	car44.photo.attach(io: car44_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_true_SIDE.jpg")

	car45 = Product.create!(
		name: "Model S",
		price: 94990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rim",
	)
	car45_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_true_RIMCLOSEUP.jpg")
	car45.photo.attach(io: car45_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_true_RIMCLOSEUP.jpg")

	car46 = Product.create!(
		name: "Model S",
		price: 94990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "interior",
	)
	car46_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$IWW00_true_INTERIOR.jpg")
	car46.photo.attach(io: car46_file, filename: "model_s_$MTS10_$PPSW_$WS10_$IWW00_true_INTERIOR.jpg")

	car50 = Product.create!(
		name: "Model S",
		price: 84990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "front",
	)
	car50_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_false_FRONT34.jpg")
	car50.photo.attach(io: car50_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_false_FRONT34.jpg")

	car51 = Product.create!(
		name: "Model S",
		price: 84990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rear",
	)
	car51_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_false_REAR34.jpg")
	car51.photo.attach(io: car51_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_false_REAR34.jpg")

	car52 = Product.create!(
		name: "Model S",
		price: 84990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "side",
	)
	car52_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_false_SIDE.jpg")
	car52.photo.attach(io: car52_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_false_SIDE.jpg")

	car53 = Product.create!(
		name: "Model S",
		price: 84990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rim",
	)
	car53_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_false_RIMCLOSEUP.jpg")
	car53.photo.attach(io: car53_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_false_RIMCLOSEUP.jpg")

	car54 = Product.create!(
		name: "Model S",
		price: 84990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "interior",
	)
	car54_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_false_INTERIOR.jpg")
	car54.photo.attach(io: car54_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_false_INTERIOR.jpg")

	car52 = Product.create!(
		name: "Model S",
		price: 94990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "front",
	)
	car52_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_true_FRONT34.jpg")
	car52.photo.attach(io: car52_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_true_FRONT34.jpg")

	car53 = Product.create!(
		name: "Model S",
		price: 94990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rear",
	)
	car53_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_true_REAR34.jpg")
	car53.photo.attach(io: car53_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_true_REAR34.jpg")

	car54 = Product.create!(
		name: "Model S",
		price: 94990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "side",
	)
	car54_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_true_SIDE.jpg")
	car54.photo.attach(io: car54_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_true_SIDE.jpg")

	car55 = Product.create!(
		name: "Model S",
		price: 94990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rim",
	)
	car55_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_true_RIMCLOSEUP.jpg")
	car55.photo.attach(io: car55_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_true_RIMCLOSEUP.jpg")

	car56 = Product.create!(
		name: "Model S",
		price: 94990,
		exterior: "Pearl White Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "interior",
	)
	car56_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS10_$ICW00_true_INTERIOR.jpg")
	car56.photo.attach(io: car56_file, filename: "model_s_$MTS10_$PPSW_$WS10_$ICW00_true_INTERIOR.jpg")

	car60 = Product.create!(
		name: "Model S",
		price: 79990,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car60_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_false_FRONT34.jpg")
	car60.photo.attach(io: car60_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_false_FRONT34.jpg")

	car61 = Product.create!(
		name: "Model S",
		price: 79990,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rear",
	)
	car61_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_false_REAR34.jpg")
	car61.photo.attach(io: car61_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_false_REAR34.jpg")

	car62 = Product.create!(
		name: "Model S",
		price: 79990,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "side",
	)
	car62_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_false_SIDE.jpg")
	car62.photo.attach(io: car62_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_false_SIDE.jpg")

	car63 = Product.create!(
		name: "Model S",
		price: 79990,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rim",
	)
	car63_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_false_RIMCLOSEUP.jpg")
	car63.photo.attach(io: car63_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_false_RIMCLOSEUP.jpg")

	car64 = Product.create!(
		name: "Model S",
		price: 79990,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "interior",
	)
	car64_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_false_INTERIOR.jpg")
	car64.photo.attach(io: car64_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_false_INTERIOR.jpg")

	car62 = Product.create!(
		name: "Model S",
		price: 89990,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "front",
	)
	car62_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_true_FRONT34.jpg")
	car62.photo.attach(io: car62_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_true_FRONT34.jpg")

	car63 = Product.create!(
		name: "Model S",
		price: 89990,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rear",
	)
	car63_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_true_REAR34.jpg")
	car63.photo.attach(io: car63_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_true_REAR34.jpg")

	car64 = Product.create!(
		name: "Model S",
		price: 89990,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "side",
	)
	car64_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_true_SIDE.jpg")
	car64.photo.attach(io: car64_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_true_SIDE.jpg")

	car65 = Product.create!(
		name: "Model S",
		price: 89990,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rim",
	)
	car65_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_true_RIMCLOSEUP.jpg")
	car65.photo.attach(io: car65_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_true_RIMCLOSEUP.jpg")

	car66 = Product.create!(
		name: "Model S",
		price: 89990,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "interior",
	)
	car66_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IBE00_true_INTERIOR.jpg")
	car66.photo.attach(io: car66_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IBE00_true_INTERIOR.jpg")

	car70 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car70_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_false_FRONT34.jpg")
	car70.photo.attach(io: car70_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_false_FRONT34.jpg")

	car71 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rear",
	)
	car71_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_false_REAR34.jpg")
	car71.photo.attach(io: car71_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_false_REAR34.jpg")

	car72 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "side",
	)
	car72_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_false_SIDE.jpg")
	car72.photo.attach(io: car72_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_false_SIDE.jpg")

	car73 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rim",
	)
	car73_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_false_RIMCLOSEUP.jpg")
	car73.photo.attach(io: car73_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_false_RIMCLOSEUP.jpg")

	car74 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "interior",
	)
	car74_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_false_INTERIOR.jpg")
	car74.photo.attach(io: car74_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_false_INTERIOR.jpg")

	car72 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "front",
	)
	car72_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_true_FRONT34.jpg")
	car72.photo.attach(io: car72_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_true_FRONT34.jpg")

	car73 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rear",
	)
	car73_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_true_REAR34.jpg")
	car73.photo.attach(io: car73_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_true_REAR34.jpg")

	car74 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "side",
	)
	car74_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_true_SIDE.jpg")
	car74.photo.attach(io: car74_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_true_SIDE.jpg")

	car75 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rim",
	)
	car75_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_true_RIMCLOSEUP.jpg")
	car75.photo.attach(io: car75_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_true_RIMCLOSEUP.jpg")

	car76 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "interior",
	)
	car76_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$IWW00_true_INTERIOR.jpg")
	car76.photo.attach(io: car76_file, filename: "model_s_$MTS10_$PBSB_$WS90_$IWW00_true_INTERIOR.jpg")

	car80 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car80_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_false_FRONT34.jpg")
	car80.photo.attach(io: car80_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_false_FRONT34.jpg")

	car81 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rear",
	)
	car81_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_false_REAR34.jpg")
	car81.photo.attach(io: car81_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_false_REAR34.jpg")

	car82 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "side",
	)
	car82_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_false_SIDE.jpg")
	car82.photo.attach(io: car82_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_false_SIDE.jpg")

	car83 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rim",
	)
	car83_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_false_RIMCLOSEUP.jpg")
	car83.photo.attach(io: car83_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_false_RIMCLOSEUP.jpg")

	car84 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "interior",
	)
	car84_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_false_INTERIOR.jpg")
	car84.photo.attach(io: car84_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_false_INTERIOR.jpg")

	car82 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "front",
	)
	car82_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_true_FRONT34.jpg")
	car82.photo.attach(io: car82_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_true_FRONT34.jpg")

	car83 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rear",
	)
	car83_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_true_REAR34.jpg")
	car83.photo.attach(io: car83_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_true_REAR34.jpg")

	car84 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "side",
	)
	car84_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_true_SIDE.jpg")
	car84.photo.attach(io: car84_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_true_SIDE.jpg")

	car85 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rim",
	)
	car85_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_true_RIMCLOSEUP.jpg")
	car85.photo.attach(io: car85_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_true_RIMCLOSEUP.jpg")

	car86 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "interior",
	)
	car86_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS90_$ICW00_true_INTERIOR.jpg")
	car86.photo.attach(io: car86_file, filename: "model_s_$MTS10_$PBSB_$WS90_$ICW00_true_INTERIOR.jpg")

	car90 = Product.create!(
		name: "Model S",
		price: 84490,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "front",
	)
	car90_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_false_FRONT34.jpg")
	car90.photo.attach(io: car90_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_false_FRONT34.jpg")

	car91 = Product.create!(
		name: "Model S",
		price: 84490,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rear",
	)
	car91_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_false_REAR34.jpg")
	car91.photo.attach(io: car91_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_false_REAR34.jpg")

	car92 = Product.create!(
		name: "Model S",
		price: 84490,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "side",
	)
	car92_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_false_SIDE.jpg")
	car92.photo.attach(io: car92_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_false_SIDE.jpg")

	car93 = Product.create!(
		name: "Model S",
		price: 84490,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rim",
	)
	car93_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_false_RIMCLOSEUP.jpg")
	car93.photo.attach(io: car93_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_false_RIMCLOSEUP.jpg")

	car94 = Product.create!(
		name: "Model S",
		price: 84490,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "interior",
	)
	car94_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_false_INTERIOR.jpg")
	car94.photo.attach(io: car94_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_false_INTERIOR.jpg")

	car92 = Product.create!(
		name: "Model S",
		price: 94490,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "front",
	)
	car92_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_true_FRONT34.jpg")
	car92.photo.attach(io: car92_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_true_FRONT34.jpg")

	car93 = Product.create!(
		name: "Model S",
		price: 94490,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rear",
	)
	car93_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_true_REAR34.jpg")
	car93.photo.attach(io: car93_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_true_REAR34.jpg")

	car94 = Product.create!(
		name: "Model S",
		price: 94490,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "side",
	)
	car94_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_true_SIDE.jpg")
	car94.photo.attach(io: car94_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_true_SIDE.jpg")

	car95 = Product.create!(
		name: "Model S",
		price: 94490,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rim",
	)
	car95_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_true_RIMCLOSEUP.jpg")
	car95.photo.attach(io: car95_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_true_RIMCLOSEUP.jpg")

	car96 = Product.create!(
		name: "Model S",
		price: 94490,
		exterior: "Solid Black",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "interior",
	)
	car96_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IBE00_true_INTERIOR.jpg")
	car96.photo.attach(io: car96_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IBE00_true_INTERIOR.jpg")

	car100 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "front",
	)
	car100_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_false_FRONT34.jpg")
	car100.photo.attach(io: car100_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_false_FRONT34.jpg")

	car101 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rear",
	)
	car101_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_false_REAR34.jpg")
	car101.photo.attach(io: car101_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_false_REAR34.jpg")

	car102 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "side",
	)
	car102_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_false_SIDE.jpg")
	car102.photo.attach(io: car102_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_false_SIDE.jpg")

	car103 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rim",
	)
	car103_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_false_RIMCLOSEUP.jpg")
	car103.photo.attach(io: car103_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_false_RIMCLOSEUP.jpg")

	car104 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "interior",
	)
	car104_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_false_INTERIOR.jpg")
	car104.photo.attach(io: car104_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_false_INTERIOR.jpg")

	car102 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "front",
	)
	car102_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_true_FRONT34.jpg")
	car102.photo.attach(io: car102_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_true_FRONT34.jpg")

	car103 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rear",
	)
	car103_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_true_REAR34.jpg")
	car103.photo.attach(io: car103_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_true_REAR34.jpg")

	car104 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "side",
	)
	car104_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_true_SIDE.jpg")
	car104.photo.attach(io: car104_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_true_SIDE.jpg")

	car105 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rim",
	)
	car105_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_true_RIMCLOSEUP.jpg")
	car105.photo.attach(io: car105_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_true_RIMCLOSEUP.jpg")

	car106 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Solid Black",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "interior",
	)
	car106_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$IWW00_true_INTERIOR.jpg")
	car106.photo.attach(io: car106_file, filename: "model_s_$MTS10_$PBSB_$WS10_$IWW00_true_INTERIOR.jpg")

	car110 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "front",
	)
	car110_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_false_FRONT34.jpg")
	car110.photo.attach(io: car110_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_false_FRONT34.jpg")

	car111 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rear",
	)
	car111_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_false_REAR34.jpg")
	car111.photo.attach(io: car111_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_false_REAR34.jpg")

	car112 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "side",
	)
	car112_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_false_SIDE.jpg")
	car112.photo.attach(io: car112_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_false_SIDE.jpg")

	car113 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rim",
	)
	car113_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_false_RIMCLOSEUP.jpg")
	car113.photo.attach(io: car113_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_false_RIMCLOSEUP.jpg")

	car114 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "interior",
	)
	car114_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_false_INTERIOR.jpg")
	car114.photo.attach(io: car114_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_false_INTERIOR.jpg")

	car112 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "front",
	)
	car112_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_true_FRONT34.jpg")
	car112.photo.attach(io: car112_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_true_FRONT34.jpg")

	car113 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rear",
	)
	car113_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_true_REAR34.jpg")
	car113.photo.attach(io: car113_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_true_REAR34.jpg")

	car114 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "side",
	)
	car114_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_true_SIDE.jpg")
	car114.photo.attach(io: car114_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_true_SIDE.jpg")

	car115 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rim",
	)
	car115_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_true_RIMCLOSEUP.jpg")
	car115.photo.attach(io: car115_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_true_RIMCLOSEUP.jpg")

	car116 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Solid Black",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "interior",
	)
	car116_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PBSB_$WS10_$ICW00_true_INTERIOR.jpg")
	car116.photo.attach(io: car116_file, filename: "model_s_$MTS10_$PBSB_$WS10_$ICW00_true_INTERIOR.jpg")

	car120 = Product.create!(
		name: "Model S",
		price: 79990,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car120_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_false_FRONT34.jpg")
	car120.photo.attach(io: car120_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_false_FRONT34.jpg")

	car121 = Product.create!(
		name: "Model S",
		price: 79990,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rear",
	)
	car121_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_false_REAR34.jpg")
	car121.photo.attach(io: car121_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_false_REAR34.jpg")

	car122 = Product.create!(
		name: "Model S",
		price: 79990,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "side",
	)
	car122_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_false_SIDE.jpg")
	car122.photo.attach(io: car122_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_false_SIDE.jpg")

	car123 = Product.create!(
		name: "Model S",
		price: 79990,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rim",
	)
	car123_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_false_RIMCLOSEUP.jpg")
	car123.photo.attach(io: car123_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_false_RIMCLOSEUP.jpg")

	car124 = Product.create!(
		name: "Model S",
		price: 79990,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "interior",
	)
	car124_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_false_INTERIOR.jpg")
	car124.photo.attach(io: car124_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_false_INTERIOR.jpg")

	car122 = Product.create!(
		name: "Model S",
		price: 89990,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "front",
	)
	car122_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_true_FRONT34.jpg")
	car122.photo.attach(io: car122_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_true_FRONT34.jpg")

	car123 = Product.create!(
		name: "Model S",
		price: 89990,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rear",
	)
	car123_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_true_REAR34.jpg")
	car123.photo.attach(io: car123_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_true_REAR34.jpg")

	car124 = Product.create!(
		name: "Model S",
		price: 89990,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "side",
	)
	car124_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_true_SIDE.jpg")
	car124.photo.attach(io: car124_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_true_SIDE.jpg")

	car125 = Product.create!(
		name: "Model S",
		price: 89990,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rim",
	)
	car125_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_true_RIMCLOSEUP.jpg")
	car125.photo.attach(io: car125_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_true_RIMCLOSEUP.jpg")

	car126 = Product.create!(
		name: "Model S",
		price: 89990,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "interior",
	)
	car126_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IBE00_true_INTERIOR.jpg")
	car126.photo.attach(io: car126_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IBE00_true_INTERIOR.jpg")

	car130 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car130_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_false_FRONT34.jpg")
	car130.photo.attach(io: car130_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_false_FRONT34.jpg")

	car131 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rear",
	)
	car131_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_false_REAR34.jpg")
	car131.photo.attach(io: car131_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_false_REAR34.jpg")

	car132 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "side",
	)
	car132_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_false_SIDE.jpg")
	car132.photo.attach(io: car132_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_false_SIDE.jpg")

	car133 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rim",
	)
	car133_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_false_RIMCLOSEUP.jpg")
	car133.photo.attach(io: car133_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_false_RIMCLOSEUP.jpg")

	car134 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "interior",
	)
	car134_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_false_INTERIOR.jpg")
	car134.photo.attach(io: car134_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_false_INTERIOR.jpg")

	car132 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "front",
	)
	car132_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_true_FRONT34.jpg")
	car132.photo.attach(io: car132_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_true_FRONT34.jpg")

	car133 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rear",
	)
	car133_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_true_REAR34.jpg")
	car133.photo.attach(io: car133_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_true_REAR34.jpg")

	car134 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "side",
	)
	car134_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_true_SIDE.jpg")
	car134.photo.attach(io: car134_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_true_SIDE.jpg")

	car135 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rim",
	)
	car135_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_true_RIMCLOSEUP.jpg")
	car135.photo.attach(io: car135_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_true_RIMCLOSEUP.jpg")

	car136 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "interior",
	)
	car136_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$IWW00_true_INTERIOR.jpg")
	car136.photo.attach(io: car136_file, filename: "model_s_$MTS10_$PMNG_$WS90_$IWW00_true_INTERIOR.jpg")

	car140 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car140_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_false_FRONT34.jpg")
	car140.photo.attach(io: car140_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_false_FRONT34.jpg")

	car141 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rear",
	)
	car141_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_false_REAR34.jpg")
	car141.photo.attach(io: car141_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_false_REAR34.jpg")

	car142 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "side",
	)
	car142_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_false_SIDE.jpg")
	car142.photo.attach(io: car142_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_false_SIDE.jpg")

	car143 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rim",
	)
	car143_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_false_RIMCLOSEUP.jpg")
	car143.photo.attach(io: car143_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_false_RIMCLOSEUP.jpg")

	car144 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "interior",
	)
	car144_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_false_INTERIOR.jpg")
	car144.photo.attach(io: car144_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_false_INTERIOR.jpg")

	car142 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "front",
	)
	car142_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_true_FRONT34.jpg")
	car142.photo.attach(io: car142_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_true_FRONT34.jpg")

	car143 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rear",
	)
	car143_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_true_REAR34.jpg")
	car143.photo.attach(io: car143_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_true_REAR34.jpg")

	car144 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "side",
	)
	car144_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_true_SIDE.jpg")
	car144.photo.attach(io: car144_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_true_SIDE.jpg")

	car145 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rim",
	)
	car145_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_true_RIMCLOSEUP.jpg")
	car145.photo.attach(io: car145_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_true_RIMCLOSEUP.jpg")

	car146 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "interior",
	)
	car146_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS90_$ICW00_true_INTERIOR.jpg")
	car146.photo.attach(io: car146_file, filename: "model_s_$MTS10_$PMNG_$WS90_$ICW00_true_INTERIOR.jpg")

	car150 = Product.create!(
		name: "Model S",
		price: 84490,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "front",
	)
	car150_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_false_FRONT34.jpg")
	car150.photo.attach(io: car150_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_false_FRONT34.jpg")

	car151 = Product.create!(
		name: "Model S",
		price: 84490,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rear",
	)
	car151_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_false_REAR34.jpg")
	car151.photo.attach(io: car151_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_false_REAR34.jpg")

	car152 = Product.create!(
		name: "Model S",
		price: 84490,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "side",
	)
	car152_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_false_SIDE.jpg")
	car152.photo.attach(io: car152_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_false_SIDE.jpg")

	car153 = Product.create!(
		name: "Model S",
		price: 84490,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rim",
	)
	car153_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_false_RIMCLOSEUP.jpg")
	car153.photo.attach(io: car153_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_false_RIMCLOSEUP.jpg")

	car154 = Product.create!(
		name: "Model S",
		price: 84490,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "interior",
	)
	car154_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_false_INTERIOR.jpg")
	car154.photo.attach(io: car154_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_false_INTERIOR.jpg")

	car152 = Product.create!(
		name: "Model S",
		price: 94490,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "front",
	)
	car152_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_true_FRONT34.jpg")
	car152.photo.attach(io: car152_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_true_FRONT34.jpg")

	car153 = Product.create!(
		name: "Model S",
		price: 94490,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rear",
	)
	car153_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_true_REAR34.jpg")
	car153.photo.attach(io: car153_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_true_REAR34.jpg")

	car154 = Product.create!(
		name: "Model S",
		price: 94490,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "side",
	)
	car154_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_true_SIDE.jpg")
	car154.photo.attach(io: car154_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_true_SIDE.jpg")

	car155 = Product.create!(
		name: "Model S",
		price: 94490,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rim",
	)
	car155_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_true_RIMCLOSEUP.jpg")
	car155.photo.attach(io: car155_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_true_RIMCLOSEUP.jpg")

	car156 = Product.create!(
		name: "Model S",
		price: 94490,
		exterior: "Midnight Silver Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "interior",
	)
	car156_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IBE00_true_INTERIOR.jpg")
	car156.photo.attach(io: car156_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IBE00_true_INTERIOR.jpg")

	car160 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "front",
	)
	car160_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_false_FRONT34.jpg")
	car160.photo.attach(io: car160_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_false_FRONT34.jpg")

	car161 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rear",
	)
	car161_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_false_REAR34.jpg")
	car161.photo.attach(io: car161_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_false_REAR34.jpg")

	car162 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "side",
	)
	car162_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_false_SIDE.jpg")
	car162.photo.attach(io: car162_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_false_SIDE.jpg")

	car163 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rim",
	)
	car163_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_false_RIMCLOSEUP.jpg")
	car163.photo.attach(io: car163_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_false_RIMCLOSEUP.jpg")

	car164 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "interior",
	)
	car164_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_false_INTERIOR.jpg")
	car164.photo.attach(io: car164_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_false_INTERIOR.jpg")

	car162 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "front",
	)
	car162_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_true_FRONT34.jpg")
	car162.photo.attach(io: car162_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_true_FRONT34.jpg")

	car163 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rear",
	)
	car163_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_true_REAR34.jpg")
	car163.photo.attach(io: car163_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_true_REAR34.jpg")

	car164 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "side",
	)
	car164_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_true_SIDE.jpg")
	car164.photo.attach(io: car164_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_true_SIDE.jpg")

	car165 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rim",
	)
	car165_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_true_RIMCLOSEUP.jpg")
	car165.photo.attach(io: car165_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_true_RIMCLOSEUP.jpg")

	car166 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "interior",
	)
	car166_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$IWW00_true_INTERIOR.jpg")
	car166.photo.attach(io: car166_file, filename: "model_s_$MTS10_$PMNG_$WS10_$IWW00_true_INTERIOR.jpg")

	car170 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "front",
	)
	car170_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_false_FRONT34.jpg")
	car170.photo.attach(io: car170_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_false_FRONT34.jpg")

	car171 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rear",
	)
	car171_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_false_REAR34.jpg")
	car171.photo.attach(io: car171_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_false_REAR34.jpg")

	car172 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "side",
	)
	car172_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_false_SIDE.jpg")
	car172.photo.attach(io: car172_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_false_SIDE.jpg")

	car173 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rim",
	)
	car173_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_false_RIMCLOSEUP.jpg")
	car173.photo.attach(io: car173_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_false_RIMCLOSEUP.jpg")

	car174 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "interior",
	)
	car174_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_false_INTERIOR.jpg")
	car174.photo.attach(io: car174_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_false_INTERIOR.jpg")

	car172 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "front",
	)
	car172_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_true_FRONT34.jpg")
	car172.photo.attach(io: car172_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_true_FRONT34.jpg")

	car173 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rear",
	)
	car173_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_true_REAR34.jpg")
	car173.photo.attach(io: car173_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_true_REAR34.jpg")

	car174 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "side",
	)
	car174_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_true_SIDE.jpg")
	car174.photo.attach(io: car174_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_true_SIDE.jpg")

	car175 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rim",
	)
	car175_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_true_RIMCLOSEUP.jpg")
	car175.photo.attach(io: car175_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_true_RIMCLOSEUP.jpg")

	car176 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Midnight Silver Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "interior",
	)
	car176_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PMNG_$WS10_$ICW00_true_INTERIOR.jpg")
	car176.photo.attach(io: car176_file, filename: "model_s_$MTS10_$PMNG_$WS10_$ICW00_true_INTERIOR.jpg")

	car180 = Product.create!(
		name: "Model S",
		price: 79990,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car180_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_false_FRONT34.jpg")
	car180.photo.attach(io: car180_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_false_FRONT34.jpg")

	car181 = Product.create!(
		name: "Model S",
		price: 79990,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rear",
	)
	car181_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_false_REAR34.jpg")
	car181.photo.attach(io: car181_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_false_REAR34.jpg")

	car182 = Product.create!(
		name: "Model S",
		price: 79990,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "side",
	)
	car182_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_false_SIDE.jpg")
	car182.photo.attach(io: car182_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_false_SIDE.jpg")

	car183 = Product.create!(
		name: "Model S",
		price: 79990,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rim",
	)
	car183_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_false_RIMCLOSEUP.jpg")
	car183.photo.attach(io: car183_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_false_RIMCLOSEUP.jpg")

	car184 = Product.create!(
		name: "Model S",
		price: 79990,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "interior",
	)
	car184_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_false_INTERIOR.jpg")
	car184.photo.attach(io: car184_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_false_INTERIOR.jpg")

	car182 = Product.create!(
		name: "Model S",
		price: 89990,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "front",
	)
	car182_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_true_FRONT34.jpg")
	car182.photo.attach(io: car182_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_true_FRONT34.jpg")

	car183 = Product.create!(
		name: "Model S",
		price: 89990,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rear",
	)
	car183_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_true_REAR34.jpg")
	car183.photo.attach(io: car183_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_true_REAR34.jpg")

	car184 = Product.create!(
		name: "Model S",
		price: 89990,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "side",
	)
	car184_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_true_SIDE.jpg")
	car184.photo.attach(io: car184_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_true_SIDE.jpg")

	car185 = Product.create!(
		name: "Model S",
		price: 89990,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rim",
	)
	car185_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_true_RIMCLOSEUP.jpg")
	car185.photo.attach(io: car185_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_true_RIMCLOSEUP.jpg")

	car186 = Product.create!(
		name: "Model S",
		price: 89990,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "interior",
	)
	car186_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IBE00_true_INTERIOR.jpg")
	car186.photo.attach(io: car186_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IBE00_true_INTERIOR.jpg")

	car190 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car190_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_false_FRONT34.jpg")
	car190.photo.attach(io: car190_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_false_FRONT34.jpg")

	car191 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rear",
	)
	car191_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_false_REAR34.jpg")
	car191.photo.attach(io: car191_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_false_REAR34.jpg")

	car192 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "side",
	)
	car192_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_false_SIDE.jpg")
	car192.photo.attach(io: car192_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_false_SIDE.jpg")

	car193 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rim",
	)
	car193_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_false_RIMCLOSEUP.jpg")
	car193.photo.attach(io: car193_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_false_RIMCLOSEUP.jpg")

	car194 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "interior",
	)
	car194_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_false_INTERIOR.jpg")
	car194.photo.attach(io: car194_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_false_INTERIOR.jpg")

	car192 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "front",
	)
	car192_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_true_FRONT34.jpg")
	car192.photo.attach(io: car192_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_true_FRONT34.jpg")

	car193 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rear",
	)
	car193_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_true_REAR34.jpg")
	car193.photo.attach(io: car193_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_true_REAR34.jpg")

	car194 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "side",
	)
	car194_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_true_SIDE.jpg")
	car194.photo.attach(io: car194_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_true_SIDE.jpg")

	car195 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rim",
	)
	car195_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_true_RIMCLOSEUP.jpg")
	car195.photo.attach(io: car195_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_true_RIMCLOSEUP.jpg")

	car196 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "interior",
	)
	car196_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$IWW00_true_INTERIOR.jpg")
	car196.photo.attach(io: car196_file, filename: "model_s_$MTS10_$PPSB_$WS90_$IWW00_true_INTERIOR.jpg")

	car200 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car200_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_false_FRONT34.jpg")
	car200.photo.attach(io: car200_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_false_FRONT34.jpg")

	car201 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rear",
	)
	car201_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_false_REAR34.jpg")
	car201.photo.attach(io: car201_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_false_REAR34.jpg")

	car202 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "side",
	)
	car202_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_false_SIDE.jpg")
	car202.photo.attach(io: car202_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_false_SIDE.jpg")

	car203 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rim",
	)
	car203_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_false_RIMCLOSEUP.jpg")
	car203.photo.attach(io: car203_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_false_RIMCLOSEUP.jpg")

	car204 = Product.create!(
		name: "Model S",
		price: 81990,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "interior",
	)
	car204_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_false_INTERIOR.jpg")
	car204.photo.attach(io: car204_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_false_INTERIOR.jpg")

	car202 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "front",
	)
	car202_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_true_FRONT34.jpg")
	car202.photo.attach(io: car202_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_true_FRONT34.jpg")

	car203 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rear",
	)
	car203_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_true_REAR34.jpg")
	car203.photo.attach(io: car203_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_true_REAR34.jpg")

	car204 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "side",
	)
	car204_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_true_SIDE.jpg")
	car204.photo.attach(io: car204_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_true_SIDE.jpg")

	car205 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rim",
	)
	car205_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_true_RIMCLOSEUP.jpg")
	car205.photo.attach(io: car205_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_true_RIMCLOSEUP.jpg")

	car206 = Product.create!(
		name: "Model S",
		price: 91990,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "interior",
	)
	car206_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS90_$ICW00_true_INTERIOR.jpg")
	car206.photo.attach(io: car206_file, filename: "model_s_$MTS10_$PPSB_$WS90_$ICW00_true_INTERIOR.jpg")

	car210 = Product.create!(
		name: "Model S",
		price: 84490,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "front",
	)
	car210_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_false_FRONT34.jpg")
	car210.photo.attach(io: car210_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_false_FRONT34.jpg")

	car211 = Product.create!(
		name: "Model S",
		price: 84490,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rear",
	)
	car211_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_false_REAR34.jpg")
	car211.photo.attach(io: car211_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_false_REAR34.jpg")

	car212 = Product.create!(
		name: "Model S",
		price: 84490,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "side",
	)
	car212_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_false_SIDE.jpg")
	car212.photo.attach(io: car212_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_false_SIDE.jpg")

	car213 = Product.create!(
		name: "Model S",
		price: 84490,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rim",
	)
	car213_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_false_RIMCLOSEUP.jpg")
	car213.photo.attach(io: car213_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_false_RIMCLOSEUP.jpg")

	car214 = Product.create!(
		name: "Model S",
		price: 84490,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "interior",
	)
	car214_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_false_INTERIOR.jpg")
	car214.photo.attach(io: car214_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_false_INTERIOR.jpg")

	car212 = Product.create!(
		name: "Model S",
		price: 94490,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "front",
	)
	car212_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_true_FRONT34.jpg")
	car212.photo.attach(io: car212_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_true_FRONT34.jpg")

	car213 = Product.create!(
		name: "Model S",
		price: 94490,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rear",
	)
	car213_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_true_REAR34.jpg")
	car213.photo.attach(io: car213_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_true_REAR34.jpg")

	car214 = Product.create!(
		name: "Model S",
		price: 94490,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "side",
	)
	car214_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_true_SIDE.jpg")
	car214.photo.attach(io: car214_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_true_SIDE.jpg")

	car215 = Product.create!(
		name: "Model S",
		price: 94490,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rim",
	)
	car215_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_true_RIMCLOSEUP.jpg")
	car215.photo.attach(io: car215_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_true_RIMCLOSEUP.jpg")

	car216 = Product.create!(
		name: "Model S",
		price: 94490,
		exterior: "Deep Blue Metallic",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "interior",
	)
	car216_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IBE00_true_INTERIOR.jpg")
	car216.photo.attach(io: car216_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IBE00_true_INTERIOR.jpg")

	car220 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "front",
	)
	car220_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_false_FRONT34.jpg")
	car220.photo.attach(io: car220_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_false_FRONT34.jpg")

	car221 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rear",
	)
	car221_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_false_REAR34.jpg")
	car221.photo.attach(io: car221_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_false_REAR34.jpg")

	car222 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "side",
	)
	car222_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_false_SIDE.jpg")
	car222.photo.attach(io: car222_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_false_SIDE.jpg")

	car223 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rim",
	)
	car223_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_false_RIMCLOSEUP.jpg")
	car223.photo.attach(io: car223_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_false_RIMCLOSEUP.jpg")

	car224 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "interior",
	)
	car224_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_false_INTERIOR.jpg")
	car224.photo.attach(io: car224_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_false_INTERIOR.jpg")

	car222 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "front",
	)
	car222_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_true_FRONT34.jpg")
	car222.photo.attach(io: car222_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_true_FRONT34.jpg")

	car223 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rear",
	)
	car223_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_true_REAR34.jpg")
	car223.photo.attach(io: car223_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_true_REAR34.jpg")

	car224 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "side",
	)
	car224_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_true_SIDE.jpg")
	car224.photo.attach(io: car224_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_true_SIDE.jpg")

	car225 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rim",
	)
	car225_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_true_RIMCLOSEUP.jpg")
	car225.photo.attach(io: car225_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_true_RIMCLOSEUP.jpg")

	car226 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Deep Blue Metallic",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "interior",
	)
	car226_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$IWW00_true_INTERIOR.jpg")
	car226.photo.attach(io: car226_file, filename: "model_s_$MTS10_$PPSB_$WS10_$IWW00_true_INTERIOR.jpg")

	car230 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "front",
	)
	car230_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_false_FRONT34.jpg")
	car230.photo.attach(io: car230_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_false_FRONT34.jpg")

	car231 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rear",
	)
	car231_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_false_REAR34.jpg")
	car231.photo.attach(io: car231_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_false_REAR34.jpg")

	car232 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "side",
	)
	car232_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_false_SIDE.jpg")
	car232.photo.attach(io: car232_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_false_SIDE.jpg")

	car233 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rim",
	)
	car233_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_false_RIMCLOSEUP.jpg")
	car233.photo.attach(io: car233_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_false_RIMCLOSEUP.jpg")

	car234 = Product.create!(
		name: "Model S",
		price: 86490,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "interior",
	)
	car234_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_false_INTERIOR.jpg")
	car234.photo.attach(io: car234_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_false_INTERIOR.jpg")

	car232 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "front",
	)
	car232_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_true_FRONT34.jpg")
	car232.photo.attach(io: car232_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_true_FRONT34.jpg")

	car233 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rear",
	)
	car233_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_true_REAR34.jpg")
	car233.photo.attach(io: car233_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_true_REAR34.jpg")

	car234 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "side",
	)
	car234_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_true_SIDE.jpg")
	car234.photo.attach(io: car234_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_true_SIDE.jpg")

	car235 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rim",
	)
	car235_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_true_RIMCLOSEUP.jpg")
	car235.photo.attach(io: car235_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_true_RIMCLOSEUP.jpg")

	car236 = Product.create!(
		name: "Model S",
		price: 96490,
		exterior: "Deep Blue Metallic",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "interior",
	)
	car236_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSB_$WS10_$ICW00_true_INTERIOR.jpg")
	car236.photo.attach(io: car236_file, filename: "model_s_$MTS10_$PPSB_$WS10_$ICW00_true_INTERIOR.jpg")

	car240 = Product.create!(
		name: "Model S",
		price: 80990,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car240_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_false_FRONT34.jpg")
	car240.photo.attach(io: car240_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_false_FRONT34.jpg")

	car241 = Product.create!(
		name: "Model S",
		price: 80990,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rear",
	)
	car241_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_false_REAR34.jpg")
	car241.photo.attach(io: car241_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_false_REAR34.jpg")

	car242 = Product.create!(
		name: "Model S",
		price: 80990,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "side",
	)
	car242_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_false_SIDE.jpg")
	car242.photo.attach(io: car242_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_false_SIDE.jpg")

	car243 = Product.create!(
		name: "Model S",
		price: 80990,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rim",
	)
	car243_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_false_RIMCLOSEUP.jpg")
	car243.photo.attach(io: car243_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_false_RIMCLOSEUP.jpg")

	car244 = Product.create!(
		name: "Model S",
		price: 80990,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "interior",
	)
	car244_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_false_INTERIOR.jpg")
	car244.photo.attach(io: car244_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_false_INTERIOR.jpg")

	car242 = Product.create!(
		name: "Model S",
		price: 90990,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "front",
	)
	car242_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_true_FRONT34.jpg")
	car242.photo.attach(io: car242_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_true_FRONT34.jpg")

	car243 = Product.create!(
		name: "Model S",
		price: 90990,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rear",
	)
	car243_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_true_REAR34.jpg")
	car243.photo.attach(io: car243_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_true_REAR34.jpg")

	car244 = Product.create!(
		name: "Model S",
		price: 90990,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "side",
	)
	car244_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_true_SIDE.jpg")
	car244.photo.attach(io: car244_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_true_SIDE.jpg")

	car245 = Product.create!(
		name: "Model S",
		price: 90990,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rim",
	)
	car245_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_true_RIMCLOSEUP.jpg")
	car245.photo.attach(io: car245_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_true_RIMCLOSEUP.jpg")

	car246 = Product.create!(
		name: "Model S",
		price: 90990,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "interior",
	)
	car246_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IBE00_true_INTERIOR.jpg")
	car246.photo.attach(io: car246_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IBE00_true_INTERIOR.jpg")

	car250 = Product.create!(
		name: "Model S",
		price: 82990,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car250_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_false_FRONT34.jpg")
	car250.photo.attach(io: car250_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_false_FRONT34.jpg")

	car251 = Product.create!(
		name: "Model S",
		price: 82990,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rear",
	)
	car251_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_false_REAR34.jpg")
	car251.photo.attach(io: car251_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_false_REAR34.jpg")

	car252 = Product.create!(
		name: "Model S",
		price: 82990,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "side",
	)
	car252_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_false_SIDE.jpg")
	car252.photo.attach(io: car252_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_false_SIDE.jpg")

	car253 = Product.create!(
		name: "Model S",
		price: 82990,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rim",
	)
	car253_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_false_RIMCLOSEUP.jpg")
	car253.photo.attach(io: car253_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_false_RIMCLOSEUP.jpg")

	car254 = Product.create!(
		name: "Model S",
		price: 82990,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "interior",
	)
	car254_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_false_INTERIOR.jpg")
	car254.photo.attach(io: car254_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_false_INTERIOR.jpg")

	car252 = Product.create!(
		name: "Model S",
		price: 92990,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "front",
	)
	car252_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_true_FRONT34.jpg")
	car252.photo.attach(io: car252_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_true_FRONT34.jpg")

	car253 = Product.create!(
		name: "Model S",
		price: 92990,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rear",
	)
	car253_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_true_REAR34.jpg")
	car253.photo.attach(io: car253_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_true_REAR34.jpg")

	car254 = Product.create!(
		name: "Model S",
		price: 92990,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "side",
	)
	car254_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_true_SIDE.jpg")
	car254.photo.attach(io: car254_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_true_SIDE.jpg")

	car255 = Product.create!(
		name: "Model S",
		price: 92990,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rim",
	)
	car255_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_true_RIMCLOSEUP.jpg")
	car255.photo.attach(io: car255_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_true_RIMCLOSEUP.jpg")

	car256 = Product.create!(
		name: "Model S",
		price: 92990,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "interior",
	)
	car256_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$IWW00_true_INTERIOR.jpg")
	car256.photo.attach(io: car256_file, filename: "model_s_$MTS10_$PPMR_$WS90_$IWW00_true_INTERIOR.jpg")

	car260 = Product.create!(
		name: "Model S",
		price: 82990,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car260_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_false_FRONT34.jpg")
	car260.photo.attach(io: car260_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_false_FRONT34.jpg")

	car261 = Product.create!(
		name: "Model S",
		price: 82990,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rear",
	)
	car261_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_false_REAR34.jpg")
	car261.photo.attach(io: car261_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_false_REAR34.jpg")

	car262 = Product.create!(
		name: "Model S",
		price: 82990,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "side",
	)
	car262_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_false_SIDE.jpg")
	car262.photo.attach(io: car262_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_false_SIDE.jpg")

	car263 = Product.create!(
		name: "Model S",
		price: 82990,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "rim",
	)
	car263_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_false_RIMCLOSEUP.jpg")
	car263.photo.attach(io: car263_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_false_RIMCLOSEUP.jpg")

	car264 = Product.create!(
		name: "Model S",
		price: 82990,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: false,
		view: "interior",
	)
	car264_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_false_INTERIOR.jpg")
	car264.photo.attach(io: car264_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_false_INTERIOR.jpg")

	car262 = Product.create!(
		name: "Model S",
		price: 92990,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "front",
	)
	car262_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_true_FRONT34.jpg")
	car262.photo.attach(io: car262_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_true_FRONT34.jpg")

	car263 = Product.create!(
		name: "Model S",
		price: 92990,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rear",
	)
	car263_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_true_REAR34.jpg")
	car263.photo.attach(io: car263_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_true_REAR34.jpg")

	car264 = Product.create!(
		name: "Model S",
		price: 92990,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "side",
	)
	car264_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_true_SIDE.jpg")
	car264.photo.attach(io: car264_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_true_SIDE.jpg")

	car265 = Product.create!(
		name: "Model S",
		price: 92990,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "rim",
	)
	car265_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_true_RIMCLOSEUP.jpg")
	car265.photo.attach(io: car265_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_true_RIMCLOSEUP.jpg")

	car266 = Product.create!(
		name: "Model S",
		price: 92990,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "19\"Tempest Wheels",
		self_driving: true,
		view: "interior",
	)
	car266_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS90_$ICW00_true_INTERIOR.jpg")
	car266.photo.attach(io: car266_file, filename: "model_s_$MTS10_$PPMR_$WS90_$ICW00_true_INTERIOR.jpg")

	car270 = Product.create!(
		name: "Model S",
		price: 85490,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "front",
	)
	car270_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_false_FRONT34.jpg")
	car270.photo.attach(io: car270_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_false_FRONT34.jpg")

	car271 = Product.create!(
		name: "Model S",
		price: 85490,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rear",
	)
	car271_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_false_REAR34.jpg")
	car271.photo.attach(io: car271_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_false_REAR34.jpg")

	car272 = Product.create!(
		name: "Model S",
		price: 85490,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "side",
	)
	car272_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_false_SIDE.jpg")
	car272.photo.attach(io: car272_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_false_SIDE.jpg")

	car273 = Product.create!(
		name: "Model S",
		price: 85490,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rim",
	)
	car273_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_false_RIMCLOSEUP.jpg")
	car273.photo.attach(io: car273_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_false_RIMCLOSEUP.jpg")

	car274 = Product.create!(
		name: "Model S",
		price: 85490,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "interior",
	)
	car274_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_false_INTERIOR.jpg")
	car274.photo.attach(io: car274_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_false_INTERIOR.jpg")

	car272 = Product.create!(
		name: "Model S",
		price: 95490,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "front",
	)
	car272_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_true_FRONT34.jpg")
	car272.photo.attach(io: car272_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_true_FRONT34.jpg")

	car273 = Product.create!(
		name: "Model S",
		price: 95490,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rear",
	)
	car273_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_true_REAR34.jpg")
	car273.photo.attach(io: car273_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_true_REAR34.jpg")

	car274 = Product.create!(
		name: "Model S",
		price: 95490,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "side",
	)
	car274_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_true_SIDE.jpg")
	car274.photo.attach(io: car274_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_true_SIDE.jpg")

	car275 = Product.create!(
		name: "Model S",
		price: 95490,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rim",
	)
	car275_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_true_RIMCLOSEUP.jpg")
	car275.photo.attach(io: car275_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_true_RIMCLOSEUP.jpg")

	car276 = Product.create!(
		name: "Model S",
		price: 95490,
		exterior: "Red Multi-Coat",
		interior_color: "All Black",
		interior_name: "Ebony Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "interior",
	)
	car276_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IBE00_true_INTERIOR.jpg")
	car276.photo.attach(io: car276_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IBE00_true_INTERIOR.jpg")

	car280 = Product.create!(
		name: "Model S",
		price: 87490,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "front",
	)
	car280_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_false_FRONT34.jpg")
	car280.photo.attach(io: car280_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_false_FRONT34.jpg")

	car281 = Product.create!(
		name: "Model S",
		price: 87490,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rear",
	)
	car281_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_false_REAR34.jpg")
	car281.photo.attach(io: car281_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_false_REAR34.jpg")

	car282 = Product.create!(
		name: "Model S",
		price: 87490,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "side",
	)
	car282_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_false_SIDE.jpg")
	car282.photo.attach(io: car282_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_false_SIDE.jpg")

	car283 = Product.create!(
		name: "Model S",
		price: 87490,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rim",
	)
	car283_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_false_RIMCLOSEUP.jpg")
	car283.photo.attach(io: car283_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_false_RIMCLOSEUP.jpg")

	car284 = Product.create!(
		name: "Model S",
		price: 87490,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "interior",
	)
	car284_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_false_INTERIOR.jpg")
	car284.photo.attach(io: car284_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_false_INTERIOR.jpg")

	car282 = Product.create!(
		name: "Model S",
		price: 97490,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "front",
	)
	car282_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_true_FRONT34.jpg")
	car282.photo.attach(io: car282_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_true_FRONT34.jpg")

	car283 = Product.create!(
		name: "Model S",
		price: 97490,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rear",
	)
	car283_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_true_REAR34.jpg")
	car283.photo.attach(io: car283_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_true_REAR34.jpg")

	car284 = Product.create!(
		name: "Model S",
		price: 97490,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "side",
	)
	car284_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_true_SIDE.jpg")
	car284.photo.attach(io: car284_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_true_SIDE.jpg")

	car285 = Product.create!(
		name: "Model S",
		price: 97490,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rim",
	)
	car285_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_true_RIMCLOSEUP.jpg")
	car285.photo.attach(io: car285_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_true_RIMCLOSEUP.jpg")

	car286 = Product.create!(
		name: "Model S",
		price: 97490,
		exterior: "Red Multi-Coat",
		interior_color: "Black and White",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "interior",
	)
	car286_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$IWW00_true_INTERIOR.jpg")
	car286.photo.attach(io: car286_file, filename: "model_s_$MTS10_$PPMR_$WS10_$IWW00_true_INTERIOR.jpg")

	car290 = Product.create!(
		name: "Model S",
		price: 87490,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "front",
	)
	car290_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_false_FRONT34.jpg")
	car290.photo.attach(io: car290_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_false_FRONT34.jpg")

	car291 = Product.create!(
		name: "Model S",
		price: 87490,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rear",
	)
	car291_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_false_REAR34.jpg")
	car291.photo.attach(io: car291_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_false_REAR34.jpg")

	car292 = Product.create!(
		name: "Model S",
		price: 87490,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "side",
	)
	car292_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_false_SIDE.jpg")
	car292.photo.attach(io: car292_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_false_SIDE.jpg")

	car293 = Product.create!(
		name: "Model S",
		price: 87490,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "rim",
	)
	car293_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_false_RIMCLOSEUP.jpg")
	car293.photo.attach(io: car293_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_false_RIMCLOSEUP.jpg")

	car294 = Product.create!(
		name: "Model S",
		price: 87490,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: false,
		view: "interior",
	)
	car294_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_false_INTERIOR.jpg")
	car294.photo.attach(io: car294_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_false_INTERIOR.jpg")

	car292 = Product.create!(
		name: "Model S",
		price: 97490,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "front",
	)
	car292_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_true_FRONT34.jpg")
	car292.photo.attach(io: car292_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_true_FRONT34.jpg")

	car293 = Product.create!(
		name: "Model S",
		price: 97490,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rear",
	)
	car293_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_true_REAR34.jpg")
	car293.photo.attach(io: car293_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_true_REAR34.jpg")

	car294 = Product.create!(
		name: "Model S",
		price: 97490,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "side",
	)
	car294_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_true_SIDE.jpg")
	car294.photo.attach(io: car294_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_true_SIDE.jpg")

	car295 = Product.create!(
		name: "Model S",
		price: 97490,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "rim",
	)
	car295_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_true_RIMCLOSEUP.jpg")
	car295.photo.attach(io: car295_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_true_RIMCLOSEUP.jpg")

	car296 = Product.create!(
		name: "Model S",
		price: 97490,
		exterior: "Red Multi-Coat",
		interior_color: "Cream",
		interior_name: "Walnut Decor",
		wheel_type: "21\" Arachnid Wheels",
		self_driving: true,
		view: "interior",
	)
	car296_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPMR_$WS10_$ICW00_true_INTERIOR.jpg")
	car296.photo.attach(io: car296_file, filename: "model_s_$MTS10_$PPMR_$WS10_$ICW00_true_INTERIOR.jpg")

end