import React from "react";
import CarButton from "./car_button";

const all_views = ["front", "side", "rear", "rim", "interior"]
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
      view: 0,
    };

    this.updateId = this.updateId.bind(this);
    this.updateExterior = this.updateExterior.bind(this);
  }

  componentDidMount() {
    this.props.requestAllProducts();
  }

  updateExterior(exterior) {
    console.log(exterior);

    let targetName = this.state.name;
    let targetExterior = exterior;
    let targetInteriorColor = this.state.interior_color;
    let targetWheelType = this.state.wheel_type;
    let targetSelfDriving = this.state.self_driving;
    let targetView = this.state.view;

    if (targetView === 4){
      targetView = 0;
    }
    let result = this.props.products.filter((data) => {
      return (
        data["name"] === targetName &&
        data["exterior"] === targetExterior &&
        data["interiorColor"] === targetInteriorColor &&
        data["wheelType"] === targetWheelType &&
        data["selfDriving"] === targetSelfDriving &&
        data["view"] === all_views[targetView]
      ) 
    });

    console.log(result);

    let imageLink = result[0].imageLink;
    let newId = result[0].id;

    console.log(imageLink);

    this.setState({
      id: newId,
      exterior: exterior,
      currentCar: imageLink,
    });
  }

  updateId() {
    console.log(this.state.id);

    let targetid = this.state.id + 1;

    let result = this.props.products.filter((data) => {
      return data["id"] === targetid;
    });

    console.log(result);

    let imageLink = result[0].imageLink;

    // console.log(imageLink);

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
