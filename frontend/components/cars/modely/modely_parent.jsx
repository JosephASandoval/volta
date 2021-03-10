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
      id: 1805,
      name: "Model S",
      price: 78490,
      exterior: "Pearl White Multi-Coat",
      interiorColor: "All Black",
      wheelType: '19"Tempest Wheels',
      selfDriving: false,
      view: 0,
      photoUrl:
        "/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBEZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6a95980f3d8b656dc55ec8b2f902f0e4fc0834e6/model_s_-MTS10_-PPSW_-WS90_-IBE00_false_FRONT34.jpg",
    };

    this.updateExterior = this.updateExterior.bind(this);
    this.updateInteriorColor = this.updateInteriorColor.bind(this);
    this.updateWheelType = this.updateWheelType.bind(this);
    this.updateSelfDriving = this.updateSelfDriving.bind(this);
    this.updateView = this.updateView.bind(this);

    this.handleView = this.handleView.bind(this);
  }

  componentDidMount() {
    this.props.requestAllProducts();
  }

  // update exterior
  updateExterior(exterior) {
    console.log(exterior);

    let result = this.props.products.filter((data) => {
      return (
        data["name"] === this.state.name &&
        data["exterior"] === exterior &&
        data["interiorColor"] === this.state.interiorColor &&
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
      exterior: result[0].exterior, //same as parameter passed in
      interiorColor: result[0].interiorColor,
      wheelType: result[0].wheelType,
      selfDriving: result[0].selfDriving,
    });
  }

  // update interior
  updateInteriorColor(interiorColor) {
    console.log(interiorColor);

    let result = this.props.products.filter((data) => {
      return (
        data["name"] === this.state.name &&
        data["exterior"] === this.state.exterior &&
        data["interiorColor"] === interiorColor &&
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
      interiorColor: result[0].interiorColor,
      wheelType: result[0].wheelType,
      selfDriving: result[0].selfDriving,
    });
  }

  // update wheel type
  updateWheelType(wheelType) {
    console.log(wheelType);
    let result = this.props.products.filter((data) => {
      return (
        data["name"] === this.state.name &&
        data["exterior"] === this.state.exterior &&
        data["interiorColor"] === this.state.interiorColor &&
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
      interiorColor: result[0].interiorColor,
      wheelType: result[0].wheelType,
      selfDriving: result[0].selfDriving,
    });
  }

  // update self driving
  updateSelfDriving(selfDriving) {
    console.log(selfDriving);

    let result = this.props.products.filter((data) => {
      return (
        data["name"] === this.state.name &&
        data["exterior"] === this.state.exterior &&
        data["interiorColor"] === this.state.interiorColor &&
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
      interiorColor: result[0].interiorColor,
      wheelType: result[0].wheelType,
      selfDriving: result[0].selfDriving,
    });
  }
  // update view
  updateView(view) {
    console.log(view);

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
        data["interiorColor"] === this.state.interiorColor &&
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
      interiorColor: result[0].interiorColor,
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
        <div>
          <ModelyHeader />
        </div>

        {/* update view */}
        <div className="carParent">
          <div
            className="carParent__item"
            style={{ backgroundImage: `url(${this.state.photoUrl})` }}
          >
            <div className="carParent__itemActions">
              <button
                className="carParent__button"
                type="submit"
                value="left"
                onClick={this.handleView}
              >
                <ArrowBackIosIcon />
              </button>

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

          {/*
          <h1>{title}</h1>
          <h4>
            {desc} <span>Touchless Delivery</span>
          </h4>
        </div>
        <div className="item__actions">
          <button className="item__buttonPrimary">{leftBtnTxt}</button>
          <button className="item__buttonSecondary">{rightBtnTxt}</button>
        </div>
          */}

          {/* <img src={this.state.imageLink} alt="image" /> */}
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

        <ModelyButton
          updateExterior={this.updateExterior}
          updateInteriorColor={this.updateInteriorColor}
          updateWheelType={this.updateWheelType}
          updateSelfDriving={this.updateSelfDriving}
        />
      </div>
    );
  }
}

export default ModelyParent;
