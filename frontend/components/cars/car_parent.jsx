import React from "react";
import CarButton from "./car_button";
import CarMainHeader from "./car_main_header";
import NumberFormat from "react-number-format";


const all_views = ["front", "side", "rear", "rim", "interior"];

class CarParent extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      id: 1,
      imageLink:
        "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441",
      name: "Model S",
      price: 78490,
      exterior: "Pearl White Multi-Coat",
      interiorColor: "All Black",
      wheelType: '19"Tempest Wheels',
      selfDriving: false,
      view: 0,
    };

    this.updateExterior = this.updateExterior.bind(this);
    this.updateInteriorColor = this.updateInteriorColor.bind(this);
    this.updateWheelType = this.updateWheelType.bind(this);
    this.updateSelfDriving = this.updateSelfDriving.bind(this);
    this.updateView = this.updateView.bind(this);
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
      imageLink: result[0].imageLink,
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
      imageLink: result[0].imageLink,
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
      imageLink: result[0].imageLink,
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
      imageLink: result[0].imageLink,
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
      imageLink: result[0].imageLink,
      name: result[0].name,
      price: result[0].price,
      exterior: result[0].exterior,
      interiorColor: result[0].interiorColor,
      wheelType: result[0].wheelType,
      selfDriving: result[0].selfDriving,
      view: targetView,
    });
  }

  render() {
    return (
      <div>
        <div>
          <CarMainHeader />
        </div>

        <div className="carParent">
          <img src={this.state.imageLink} alt="image" />
        </div>

        <div className="carParent__price">
          <NumberFormat
            value={this.state.price}
            displayType={"text"}
            thousandSeparator={true}
            prefix={"$"}
          />
          <div className="carParent__priceDesc">
            <span>Purch</span>
          </div>
          
        </div>

        <CarButton
          updateExterior={this.updateExterior}
          updateInteriorColor={this.updateInteriorColor}
          updateWheelType={this.updateWheelType}
          updateSelfDriving={this.updateSelfDriving}
          updateView={this.updateView}
        />
      </div>
    );
  }
}

export default CarParent;
