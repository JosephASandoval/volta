import React from "react";
import ModelyButton from "./modely_button";
import ModelyHeader from "./modely_header";
import NumberFormat from "react-number-format";
import ArrowBackIosIcon from "@material-ui/icons/ArrowBackIos";
import ArrowForwardIosIcon from "@material-ui/icons/ArrowForwardIos";

const all_views = ["front", "side", "rear", "rim", "interior"];

class ModelyParent extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      id: 3929,
      name: "Model Y",
      price: 47490,
      exterior: "Pearl White Multi-Coat",
      interior: "All Black",
      wheelType: '19" Gemini Wheels',
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
        this.setState({ photoUrl: this.props.products[800].photoUrl });
      });
    } else {
      this.setState({ photoUrl: this.props.products[800].photoUrl });
    }
  }

  setIsMenuOpen() {
    this.setState({
      isMenuOpen: !this.state.isMenuOpen,
    });
  }

  // update exterior
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

  // update interior
  updateInterior(interior) {
    let result = this.props.products.filter((data) => {
      return (
        data["name"] === this.state.name &&
        data["exterior"] === this.state.exterior &&
        data["interior"] === interior &&
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

  // update wheel type
  updateWheelType(wheelType) {
    let result = this.props.products.filter((data) => {
      return (
        data["name"] === this.state.name &&
        data["exterior"] === this.state.exterior &&
        data["interior"] === this.state.interior &&
        data["wheelType"] === wheelType &&
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

  // update self driving
  updateSelfDriving(selfDriving) {
    let result = this.props.products.filter((data) => {
      return (
        data["name"] === this.state.name &&
        data["exterior"] === this.state.exterior &&
        data["interior"] === this.state.interior &&
        data["wheelType"] === this.state.wheelType &&
        data["selfDriving"] === (selfDriving === "true") &&
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
  // update view
  updateView(view) {
    let targetView = this.state.view;

    if (view === "right") {
      targetView += 1;
    } else {
      targetView -= 1;
    }

    targetView = (targetView + 5) % 5;

    let result = this.props.products.filter((data) => {
      return (
        data["name"] === this.state.name &&
        data["exterior"] === this.state.exterior &&
        data["interior"] === this.state.interior &&
        data["wheelType"] === this.state.wheelType &&
        data["selfDriving"] === this.state.selfDriving &&
        data["view"] === all_views[targetView]
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
      view: targetView,
    });
  }

  handleView(e) {
    e.preventDefault();
    this.updateView(e.currentTarget.value);
  }

  render() {
    return (
      <div>
        <ModelyHeader
          currentUser={this.props.currentUser}
          logout={this.props.logout}
          cartItemsLen={this.props.cartItemsLen}
          isMenuOpen={this.state.isMenuOpen}
          setIsMenuOpen={this.setIsMenuOpen}
        />
        <ModelyButton
          updateExterior={this.updateExterior}
          updateInterior={this.updateInterior}
          updateWheelType={this.updateWheelType}
          updateSelfDriving={this.updateSelfDriving}
          addCartItem={this.props.addCartItem}
          currentUser={this.props.currentUser}
          userId={this.props.userId}
          products={this.props.products}
          productId={this.state.id}
        />
        <div className={this.state.isMenuOpen ? "background-dim" : ""}>
          {/* update view */}
          <div className="carParent">
            <div
              className="carParent__item"
              style={{
                backgroundImage:
                  this.props.products.length !== 0
                    ? `url(${this.state.photoUrl})`
                    : "",
              }}
            >
              <div className="carParent__back">
                <button
                  className="carParent__button"
                  type="submit"
                  value="left"
                  onClick={this.handleView}
                >
                  <ArrowBackIosIcon />
                </button>
              </div>

              <div className="carParent__forward">
                <button
                  className="carParent__button"
                  type="submit"
                  value="right"
                  onClick={this.handleView}
                >
                  <ArrowForwardIosIcon />
                </button>
              </div>
            </div>
            <div className="carParent__price">
              <NumberFormat
                value={this.state.price}
                displayType={"text"}
                thousandSeparator={true}
                prefix={"$"}
              />
              <div className="carParent__priceDesc">
                <span className="carParent__purch">Purchase price</span>
                <span className="carParent__purchSecond">
                  <NumberFormat
                    value={this.state.price - 5500}
                    displayType={"text"}
                    thousandSeparator={true}
                    prefix={"$"}
                  />
                </span>
                <span className="input">After potential savings</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default ModelyParent;
