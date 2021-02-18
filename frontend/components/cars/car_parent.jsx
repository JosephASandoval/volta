import React from "react";
import CarButton from "./car_button";

class CarParent extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      id: 1,
      currentCar:
        "https://static-assets.tesla.com/configurator/compositor?&options=$MTS10,$PPSW,$WS90,$IBE00&view=FRONT34&model=ms&size=1920&bkba_opt=1&version=v0028d202102110441&crop=0,0,0,0&version=v0028d202102110441",
      name: "Model S",
      exterior: "Pearl White Multi-Coat",
      interior_color: "All Black",
      wheel_type: '19"Tempest Wheels',
      self_driving: false,
      view: "front",
    };

    this.updateId = this.updateId.bind(this);
    // this.updateExterior = this.updateExterior.bind(this);
  }

  componentDidMount() {
    this.props.requestAllProducts();
  }

  // updateExterior() {
  //   console.log(this.state.exterior);
  //   let targetColor = this.state.exterior;
  //   let result = this.props.products.filter((data) => {
  //     return data["exterior"] === targetColor;
  //   });

  //   console.log(result);
  //   let imageLink = result[0].imageLink;
  //   console.log(imageLink);
  //   this.setState({
  //     exterior: this.state.exterior,
  //     currentCar: imageLink,
  //   });
  // }

  updateId() {
    console.log(this.state.id);

    let targetid = this.state.id + 1;

    let result = this.props.products.filter((data) => {
      return data["id"] === targetid;
    });

    console.log(result);
    let imageLink = result[0].imageLink;
    console.log(imageLink);
    this.setState({
      id: this.state.id + 1,
      currentCar: imageLink,
    });
  }

  render() {
    return (
      <div>
        <CarButton
          updateId={this.updateId}
          updateExterior={this.updateExterior}
        />
        <p>{this.state.id}</p>
        <li>
          <img src={this.state.currentCar} alt="" />
        </li>
      </div>
    );
  }
}

export default CarParent;
