import React from "react";
import CarButton from "./car_button";

class CarParent extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      productId: 1,
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
  }

  componentDidMount() {
    this.props.requestAllProducts();
  }
  update_exterior_blue(){
    
  }
  updateId() {
    console.log(this.state.productId);

    let targetid = this.state.productId + 1;

    let result = this.props.products.filter(function (d) {
      return d["id"] === targetid;
    });

    console.log(result);
    let imageLink = result[0].imageLink;
    console.log(imageLink);
    this.setState({
      productId: this.state.productId + 1,
      currentCar: imageLink,
    });
  }

  render() {
    return (
      <div>
        <CarButton updateId={this.updateId} />
        <p>{this.state.productId}</p>
        <li>
          <img src={this.state.currentCar} alt="" />
        </li>
      </div>
    );
  }
}

export default CarParent;
