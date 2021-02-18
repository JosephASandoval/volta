import React from "react";
import CarButton from "./car_button";

const all_views = ["front", "side", "rear", "rim", "interior"]
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

    let targetView = this.state.view;

    if (targetView === 4){
      targetView = 0; //reverse for interior like the website
    }

    let result = this.props.products.filter((data) => {
      return (
        data["name"] === this.state.name &&
        data["exterior"] === exterior &&
        data["interiorColor"] === this.state.interior_color &&
        data["wheelType"] === this.state.wheel_type &&
        data["selfDriving"] === this.state.self_driving &&
        data["view"] === all_views[targetView]
      ); 
    });

    this.setState({
      id: result[0].id,
      price: result[0].price,
      exterior: result[0].exterior, //same as parameter passed in
      imageLink: result[0].imageLink,
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
      imageLink: imageLink,
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
          <img src={this.state.imageLink} alt="" />
        </li>
      </div>
    );
  }
}

export default CarParent;
