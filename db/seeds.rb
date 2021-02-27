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
  # Product.destroy_all

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

  # puts "Creating Model S..."

  # car_0 = Product.create!(
  #   name: "Model S",
  #   price: 78490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_1 = Product.create!(
  #   name: "Model S",
  #   price: 78490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_2 = Product.create!(
  #   name: "Model S",
  #   price: 78490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_3 = Product.create!(
  #   name: "Model S",
  #   price: 78490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_4 = Product.create!(
  #   name: "Model S",
  #   price: 78490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSW,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_2 = Product.create!(
  #   name: "Model S",
  #   price: 88490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_3 = Product.create!(
  #   name: "Model S",
  #   price: 88490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_4 = Product.create!(
  #   name: "Model S",
  #   price: 88490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_5 = Product.create!(
  #   name: "Model S",
  #   price: 88490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_6 = Product.create!(
  #   name: "Model S",
  #   price: 88490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSW,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_10 = Product.create!(
  #   name: "Model S",
  #   price: 80490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_11 = Product.create!(
  #   name: "Model S",
  #   price: 80490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_12 = Product.create!(
  #   name: "Model S",
  #   price: 80490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_13 = Product.create!(
  #   name: "Model S",
  #   price: 80490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_14 = Product.create!(
  #   name: "Model S",
  #   price: 80490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSW,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_12 = Product.create!(
  #   name: "Model S",
  #   price: 90490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_13 = Product.create!(
  #   name: "Model S",
  #   price: 90490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_14 = Product.create!(
  #   name: "Model S",
  #   price: 90490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_15 = Product.create!(
  #   name: "Model S",
  #   price: 90490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_16 = Product.create!(
  #   name: "Model S",
  #   price: 90490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSW,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_20 = Product.create!(
  #   name: "Model S",
  #   price: 80490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_21 = Product.create!(
  #   name: "Model S",
  #   price: 80490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_22 = Product.create!(
  #   name: "Model S",
  #   price: 80490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_23 = Product.create!(
  #   name: "Model S",
  #   price: 80490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_24 = Product.create!(
  #   name: "Model S",
  #   price: 80490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSW,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_22 = Product.create!(
  #   name: "Model S",
  #   price: 90490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_23 = Product.create!(
  #   name: "Model S",
  #   price: 90490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_24 = Product.create!(
  #   name: "Model S",
  #   price: 90490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_25 = Product.create!(
  #   name: "Model S",
  #   price: 90490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_26 = Product.create!(
  #   name: "Model S",
  #   price: 90490,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSW,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_30 = Product.create!(
  #   name: "Model S",
  #   price: 82990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_31 = Product.create!(
  #   name: "Model S",
  #   price: 82990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_32 = Product.create!(
  #   name: "Model S",
  #   price: 82990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_33 = Product.create!(
  #   name: "Model S",
  #   price: 82990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_34 = Product.create!(
  #   name: "Model S",
  #   price: 82990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSW,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_32 = Product.create!(
  #   name: "Model S",
  #   price: 92990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_33 = Product.create!(
  #   name: "Model S",
  #   price: 92990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_34 = Product.create!(
  #   name: "Model S",
  #   price: 92990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_35 = Product.create!(
  #   name: "Model S",
  #   price: 92990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_36 = Product.create!(
  #   name: "Model S",
  #   price: 92990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSW,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_40 = Product.create!(
  #   name: "Model S",
  #   price: 84990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_41 = Product.create!(
  #   name: "Model S",
  #   price: 84990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_42 = Product.create!(
  #   name: "Model S",
  #   price: 84990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_43 = Product.create!(
  #   name: "Model S",
  #   price: 84990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_44 = Product.create!(
  #   name: "Model S",
  #   price: 84990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSW,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_42 = Product.create!(
  #   name: "Model S",
  #   price: 94990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_43 = Product.create!(
  #   name: "Model S",
  #   price: 94990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_44 = Product.create!(
  #   name: "Model S",
  #   price: 94990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_45 = Product.create!(
  #   name: "Model S",
  #   price: 94990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_46 = Product.create!(
  #   name: "Model S",
  #   price: 94990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSW,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_50 = Product.create!(
  #   name: "Model S",
  #   price: 84990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_51 = Product.create!(
  #   name: "Model S",
  #   price: 84990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_52 = Product.create!(
  #   name: "Model S",
  #   price: 84990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_53 = Product.create!(
  #   name: "Model S",
  #   price: 84990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_54 = Product.create!(
  #   name: "Model S",
  #   price: 84990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSW,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_52 = Product.create!(
  #   name: "Model S",
  #   price: 94990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_53 = Product.create!(
  #   name: "Model S",
  #   price: 94990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_54 = Product.create!(
  #   name: "Model S",
  #   price: 94990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_55 = Product.create!(
  #   name: "Model S",
  #   price: 94990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS10,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_56 = Product.create!(
  #   name: "Model S",
  #   price: 94990,
  #   exterior: "Pearl White Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSW,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_60 = Product.create!(
  #   name: "Model S",
  #   price: 79990,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_61 = Product.create!(
  #   name: "Model S",
  #   price: 79990,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_62 = Product.create!(
  #   name: "Model S",
  #   price: 79990,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_63 = Product.create!(
  #   name: "Model S",
  #   price: 79990,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_64 = Product.create!(
  #   name: "Model S",
  #   price: 79990,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PBSB,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_62 = Product.create!(
  #   name: "Model S",
  #   price: 89990,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_63 = Product.create!(
  #   name: "Model S",
  #   price: 89990,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_64 = Product.create!(
  #   name: "Model S",
  #   price: 89990,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_65 = Product.create!(
  #   name: "Model S",
  #   price: 89990,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_66 = Product.create!(
  #   name: "Model S",
  #   price: 89990,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PBSB,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_70 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_71 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_72 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_73 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_74 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PBSB,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_72 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_73 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_74 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_75 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_76 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PBSB,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_80 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_81 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_82 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_83 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_84 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PBSB,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_82 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_83 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_84 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_85 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS90,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_86 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PBSB,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_90 = Product.create!(
  #   name: "Model S",
  #   price: 84490,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_91 = Product.create!(
  #   name: "Model S",
  #   price: 84490,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_92 = Product.create!(
  #   name: "Model S",
  #   price: 84490,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_93 = Product.create!(
  #   name: "Model S",
  #   price: 84490,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_94 = Product.create!(
  #   name: "Model S",
  #   price: 84490,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PBSB,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_92 = Product.create!(
  #   name: "Model S",
  #   price: 94490,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_93 = Product.create!(
  #   name: "Model S",
  #   price: 94490,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_94 = Product.create!(
  #   name: "Model S",
  #   price: 94490,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_95 = Product.create!(
  #   name: "Model S",
  #   price: 94490,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_96 = Product.create!(
  #   name: "Model S",
  #   price: 94490,
  #   exterior: "Solid Black",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PBSB,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_100 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_101 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_102 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_103 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_104 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PBSB,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_102 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_103 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_104 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_105 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_106 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Solid Black",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PBSB,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_110 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_111 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_112 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_113 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_114 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PBSB,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_112 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_113 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_114 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_115 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PBSB,$WS10,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_116 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Solid Black",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PBSB,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_120 = Product.create!(
  #   name: "Model S",
  #   price: 79990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_121 = Product.create!(
  #   name: "Model S",
  #   price: 79990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_122 = Product.create!(
  #   name: "Model S",
  #   price: 79990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_123 = Product.create!(
  #   name: "Model S",
  #   price: 79990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_124 = Product.create!(
  #   name: "Model S",
  #   price: 79990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PMNG,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_122 = Product.create!(
  #   name: "Model S",
  #   price: 89990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_123 = Product.create!(
  #   name: "Model S",
  #   price: 89990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_124 = Product.create!(
  #   name: "Model S",
  #   price: 89990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_125 = Product.create!(
  #   name: "Model S",
  #   price: 89990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_126 = Product.create!(
  #   name: "Model S",
  #   price: 89990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PMNG,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_130 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_131 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_132 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_133 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_134 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PMNG,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_132 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_133 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_134 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_135 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_136 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PMNG,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_140 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_141 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_142 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_143 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_144 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PMNG,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_142 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_143 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_144 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_145 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS90,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_146 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PMNG,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_150 = Product.create!(
  #   name: "Model S",
  #   price: 84490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_151 = Product.create!(
  #   name: "Model S",
  #   price: 84490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_152 = Product.create!(
  #   name: "Model S",
  #   price: 84490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_153 = Product.create!(
  #   name: "Model S",
  #   price: 84490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_154 = Product.create!(
  #   name: "Model S",
  #   price: 84490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PMNG,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_152 = Product.create!(
  #   name: "Model S",
  #   price: 94490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_153 = Product.create!(
  #   name: "Model S",
  #   price: 94490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_154 = Product.create!(
  #   name: "Model S",
  #   price: 94490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_155 = Product.create!(
  #   name: "Model S",
  #   price: 94490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_156 = Product.create!(
  #   name: "Model S",
  #   price: 94490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PMNG,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_160 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_161 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_162 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_163 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_164 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PMNG,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_162 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_163 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_164 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_165 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_166 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PMNG,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_170 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_171 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_172 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_173 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_174 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PMNG,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_172 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_173 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_174 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_175 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PMNG,$WS10,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_176 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Midnight Silver Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PMNG,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_180 = Product.create!(
  #   name: "Model S",
  #   price: 79990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_181 = Product.create!(
  #   name: "Model S",
  #   price: 79990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_182 = Product.create!(
  #   name: "Model S",
  #   price: 79990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_183 = Product.create!(
  #   name: "Model S",
  #   price: 79990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_184 = Product.create!(
  #   name: "Model S",
  #   price: 79990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSB,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_182 = Product.create!(
  #   name: "Model S",
  #   price: 89990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_183 = Product.create!(
  #   name: "Model S",
  #   price: 89990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_184 = Product.create!(
  #   name: "Model S",
  #   price: 89990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_185 = Product.create!(
  #   name: "Model S",
  #   price: 89990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_186 = Product.create!(
  #   name: "Model S",
  #   price: 89990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSB,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_190 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_191 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_192 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_193 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_194 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSB,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_192 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_193 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_194 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_195 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_196 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSB,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_200 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_201 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_202 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_203 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_204 = Product.create!(
  #   name: "Model S",
  #   price: 81990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSB,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_202 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_203 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_204 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_205 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS90,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_206 = Product.create!(
  #   name: "Model S",
  #   price: 91990,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSB,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_210 = Product.create!(
  #   name: "Model S",
  #   price: 84490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_211 = Product.create!(
  #   name: "Model S",
  #   price: 84490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_212 = Product.create!(
  #   name: "Model S",
  #   price: 84490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_213 = Product.create!(
  #   name: "Model S",
  #   price: 84490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_214 = Product.create!(
  #   name: "Model S",
  #   price: 84490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSB,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_212 = Product.create!(
  #   name: "Model S",
  #   price: 94490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_213 = Product.create!(
  #   name: "Model S",
  #   price: 94490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_214 = Product.create!(
  #   name: "Model S",
  #   price: 94490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_215 = Product.create!(
  #   name: "Model S",
  #   price: 94490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_216 = Product.create!(
  #   name: "Model S",
  #   price: 94490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSB,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_220 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_221 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_222 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_223 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_224 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSB,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_222 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_223 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_224 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_225 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_226 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSB,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_230 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_231 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_232 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_233 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_234 = Product.create!(
  #   name: "Model S",
  #   price: 86490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSB,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_232 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_233 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_234 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_235 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSB,$WS10,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_236 = Product.create!(
  #   name: "Model S",
  #   price: 96490,
  #   exterior: "Deep Blue Metallic",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPSB,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_240 = Product.create!(
  #   name: "Model S",
  #   price: 80990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_241 = Product.create!(
  #   name: "Model S",
  #   price: 80990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_242 = Product.create!(
  #   name: "Model S",
  #   price: 80990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_243 = Product.create!(
  #   name: "Model S",
  #   price: 80990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_244 = Product.create!(
  #   name: "Model S",
  #   price: 80990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPMR,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_242 = Product.create!(
  #   name: "Model S",
  #   price: 90990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_243 = Product.create!(
  #   name: "Model S",
  #   price: 90990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_244 = Product.create!(
  #   name: "Model S",
  #   price: 90990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_245 = Product.create!(
  #   name: "Model S",
  #   price: 90990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_246 = Product.create!(
  #   name: "Model S",
  #   price: 90990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPMR,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_250 = Product.create!(
  #   name: "Model S",
  #   price: 82990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_251 = Product.create!(
  #   name: "Model S",
  #   price: 82990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_252 = Product.create!(
  #   name: "Model S",
  #   price: 82990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_253 = Product.create!(
  #   name: "Model S",
  #   price: 82990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_254 = Product.create!(
  #   name: "Model S",
  #   price: 82990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPMR,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_252 = Product.create!(
  #   name: "Model S",
  #   price: 92990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_253 = Product.create!(
  #   name: "Model S",
  #   price: 92990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_254 = Product.create!(
  #   name: "Model S",
  #   price: 92990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_255 = Product.create!(
  #   name: "Model S",
  #   price: 92990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_256 = Product.create!(
  #   name: "Model S",
  #   price: 92990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPMR,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_260 = Product.create!(
  #   name: "Model S",
  #   price: 82990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_261 = Product.create!(
  #   name: "Model S",
  #   price: 82990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_262 = Product.create!(
  #   name: "Model S",
  #   price: 82990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_263 = Product.create!(
  #   name: "Model S",
  #   price: 82990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_264 = Product.create!(
  #   name: "Model S",
  #   price: 82990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPMR,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_262 = Product.create!(
  #   name: "Model S",
  #   price: 92990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_263 = Product.create!(
  #   name: "Model S",
  #   price: 92990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_264 = Product.create!(
  #   name: "Model S",
  #   price: 92990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_265 = Product.create!(
  #   name: "Model S",
  #   price: 92990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS90,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_266 = Product.create!(
  #   name: "Model S",
  #   price: 92990,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "19\"Tempest Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPMR,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_270 = Product.create!(
  #   name: "Model S",
  #   price: 85490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_271 = Product.create!(
  #   name: "Model S",
  #   price: 85490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_272 = Product.create!(
  #   name: "Model S",
  #   price: 85490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_273 = Product.create!(
  #   name: "Model S",
  #   price: 85490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_274 = Product.create!(
  #   name: "Model S",
  #   price: 85490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPMR,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_272 = Product.create!(
  #   name: "Model S",
  #   price: 95490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_273 = Product.create!(
  #   name: "Model S",
  #   price: 95490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IBE00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_274 = Product.create!(
  #   name: "Model S",
  #   price: 95490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IBE00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_275 = Product.create!(
  #   name: "Model S",
  #   price: 95490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IBE00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_276 = Product.create!(
  #   name: "Model S",
  #   price: 95490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "All Black",
  #   interior_name: "Ebony Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPMR,$IBE00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_280 = Product.create!(
  #   name: "Model S",
  #   price: 87490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_281 = Product.create!(
  #   name: "Model S",
  #   price: 87490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_282 = Product.create!(
  #   name: "Model S",
  #   price: 87490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_283 = Product.create!(
  #   name: "Model S",
  #   price: 87490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_284 = Product.create!(
  #   name: "Model S",
  #   price: 87490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPMR,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_282 = Product.create!(
  #   name: "Model S",
  #   price: 97490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IWW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_283 = Product.create!(
  #   name: "Model S",
  #   price: 97490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IWW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_284 = Product.create!(
  #   name: "Model S",
  #   price: 97490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IWW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_285 = Product.create!(
  #   name: "Model S",
  #   price: 97490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$IWW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_286 = Product.create!(
  #   name: "Model S",
  #   price: 97490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Black and White",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPMR,$IWW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_290 = Product.create!(
  #   name: "Model S",
  #   price: 87490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_291 = Product.create!(
  #   name: "Model S",
  #   price: 87490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_292 = Product.create!(
  #   name: "Model S",
  #   price: 87490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_293 = Product.create!(
  #   name: "Model S",
  #   price: 87490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_294 = Product.create!(
  #   name: "Model S",
  #   price: 87490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: false,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPMR,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_292 = Product.create!(
  #   name: "Model S",
  #   price: 97490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "front",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$ICW00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_293 = Product.create!(
  #   name: "Model S",
  #   price: 97490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rear",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$ICW00&view=REAR34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_294 = Product.create!(
  #   name: "Model S",
  #   price: 97490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "side",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$ICW00&view=SIDE&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_295 = Product.create!(
  #   name: "Model S",
  #   price: 97490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "rim",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPMR,$WS10,$ICW00&view=RIMCLOSEUP&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

  # car_296 = Product.create!(
  #   name: "Model S",
  #   price: 97490,
  #   exterior: "Red Multi-Coat",
  #   interior_color: "Cream",
  #   interior_name: "Walnut Decor",
  #   wheel_type: "21\" Arachnid Wheels",
  #   self_driving: true,
  #   view: "interior",
  #   image_link: "https://static-assets.tesla.com/configurator/compositor?&options=$PPMR,$ICW00,$ST0Y&view=INTERIOR&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441"
  # )

end