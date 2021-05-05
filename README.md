# README

# Volta

<img src="https://github.com/JosephASandoval/volta/blob/main/app/assets/images/volta_linkedin.png" alt="Home page" width="600" />

## Description

Volta, a Tesla clone, is an eCommerce web application that allows users to search for products, add them to their shopping cart, and "purchase" Volta electric vehicles. Users can also write reviews for all Volta products, which then can be viewed publicly.



## Demo

[Volta Live](https://sandoval-volta.herokuapp.com/#/)



## Technologies

**Database: PostgreSQL**

**Backend: Ruby on Rails**

**Frontend: JavaScript, React, Redux**

**Image Storage: AWS S3**



## Features

1. #### Product Listing and Customization

* All Products are listed on the homepage
* Homepage also includes links at the top for each individual product
* Product show page allows the user to customize their vehicle and see those chages in real time

<img src="https://github.com/JosephASandoval/volta/blob/main/app/assets/images/shopping_cart_demo.gif" alt="shopping cart" width="700" />


2. #### User Authentication

* Users can sign up, sign in, and logout to an existing account
* Users can use a demo login to try the site
* Users cannot use certain features without logging in (i.e. creating reviews and adding products to their shopping cart)


3. #### User Profile

* Users are navigated here after logging in

<img src="https://github.com/JosephASandoval/volta/blob/main/app/assets/images/profile_demo.png" alt="profile" />


4. #### Shopping Cart

* Logged in users can add and remove items to and from their shopping cart
* Logged in users can update the number of items in their shopping cart and that number is displayed in the page header
* The total price is calculated base on the number of items in the user's shopping cart


5. #### Reviews

* Logged in users can write reviews for products
* Logged in users can delete their own review and resubmit a review
* Reviews are publicly available to read on the products reviews page

<img src="https://github.com/JosephASandoval/volta/blob/main/app/assets/images/reviews_demo.gif" alt="reviews" width="700"/>



## Challenges

One of the more challenging problems that I faced when building Volta was trying to figure out the most user-friendly way to allow the user to choose and view one car from the 1,000 possible customizations and views. The design choice I went with was to allow the user to customize their vehicles using multiple stylistic buttons and render an image of those customizations in real-time. The basic idea was to have the product picture update immediately based on the user’s input. In order to achieve this functionality, I did the following:

* I first created a python script to quickly and systematically scrape all necessary product images directly from the actual Tesla website.

* I then integrated ActiveStorage by compressing image files and storing them in S3 for greater scalability.

* Next, I seeded my rails backend with products that vary based on the following attributes: name, price, exterior, interior, wheel type, self-driving, view, and photoUrl. I did this so that I would be able to filter out the exact product based on data received from the user on the frontend.

```ruby
#seeds.rb

require 'open-uri'

ActiveRecord::Base.transaction do

puts "Creating Model S..."

	car_s_0 = Product.create!(
		name: "Model S",
		price: 78490,
		exterior: "Pearl White Multi-Coat",
		interior: "All Black",
		wheel_type: "19\" Tempest Wheels",
		self_driving: false,
		view: "front",
	)
	car_s_0_file = open("https://volta-seeds.s3-us-west-1.amazonaws.com/models/model_s_$MTS10_$PPSW_$WS90_$IBE00_false_FRONT34.jpg")
	car_s_0.photo.attach(io: car_s_0_file, filename: "model_s_$MTS10_$PPSW_$WS90_$IBE00_false_FRONT34.jpg")
end
```

* Then, I created a react class component that once mounted to the DOM would retrieve all products from my backend, store them in an object called “products”, and set the state of the photoUrl to the first image in my “products” object so that the most basic/least customized product image would be the first thing the user sees. I also incorporated a loading animation that prevents the user from doing anything until the products have all successfully loaded on the frontend.

```javascript
//models_parent.jsx

const all_views = ["front", "side", "rear", "rim", "interior"];

class ModelsParent extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      id: 3129,
      name: "Model S",
      price: 78490,
      exterior: "Pearl White Multi-Coat",
      interior: "All Black",
      wheelType: '19" Tempest Wheels',
      selfDriving: false,
      view: 0,
      photoUrl: "",
      isMenuOpen: false,
    };

    this.updateExterior = this.updateExterior.bind(this);
    this.updateInterior = this.updateInterior.bind(this);
    this.updateWheelType = this.updateWheelType.bind(this);
    this.updateSelfDriving = this.updateSelfDriving.bind(this);
    this.updateView = this.updateView.bind(this);

    this.handleView = this.handleView.bind(this);

    this.setIsMenuOpen = this.setIsMenuOpen.bind(this);
  }

  componentDidMount() {
    if (this.props.products.length === 0) {
      this.props.requestAllProducts().then(() => {
        this.setState({ photoUrl: this.props.products[0].photoUrl });
      });
    } else {
      this.setState({ photoUrl: this.props.products[0].photoUrl });
    }
  }
}
```

* Next, when the user updates the exterior (I used a child component here) I made it so that only one specific product would be filtered from my “products” object based on that user’s exterior choice and current values for all other car attributes.

* Finally, I set the current state base on the car’s selected attributes in order to obtain that car’s attached photoUrl, which updates the product image being rendered immediately because “this.setState” was successfully invoked.

```javascript
//models_parent.jsx

class ModelsParent extends React.Component {
  updateExterior(exterior) {
    let result = this.props.products.filter((data) => {
      return (
        data["name"] === this.state.name &&
        data["exterior"] === exterior &&
        data["interior"] === this.state.interior &&
        data["wheelType"] === this.state.wheelType &&
        data["selfDriving"] === this.state.selfDriving &&
        data["view"] === all_views[this.state.view]
      );
    });

    this.setState({
      id: result[0].id,
      photoUrl: result[0].photoUrl,
      name: result[0].name,
      price: result[0].price,
      exterior: result[0].exterior,
      interior: result[0].interior,
      wheelType: result[0].wheelType,
      selfDriving: result[0].selfDriving,
    });
  }
}
```

Overall, I am very proud of the end result because Volta is now able to provide the user with that desired real-time visual of their own customizations. Through this problem-solving process, I realized that there were a few gaps in my knowledge of React. I had to study React hooks in order to help solve a few inefficiencies and loading delays when retrieving my products from the backend. Specifically, the use of useEffect within a function component allowed me to mimic the behavior of the React lifecycle method componentDidMount so that I would be able to retrieve all products immediately when a user visits Volta as opposed to doing this only after a user visits the product show page. Please demo this customization feature yourself.



#### To run locally please use the following commands:

\> bundle install  
\> bundle exec rails db:setup  
\> npm install  
\> npm run webpack  
\> rails s

Then you can navigate to localhost:3000 in the browser to view the site. Thank you!