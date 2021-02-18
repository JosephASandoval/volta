import React from "react";

class ProductShowForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: "Model S",
      exterior: "Pearl White Multi-Coat",
      interior_color: "All Black",
      wheel_type: '19"Tempest Wheels',
      self_driving: false,
      view: "front",
    };

    this.updateExterior = this.updateExterior.bind(this);
    this.updateInteriorColor = this.updateInteriorColor.bind(this);
    this.updateWheelType = this.updateWheelType.bind(this);
    this.updateSelfDriving = this.updateSelfDriving.bind(this);
    this.updateView = this.updateView.bind(this);

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  updateExterior(e) {
    this.setState({ exterior: e.currentTarget.value });
  }

  updateInteriorColor(e) {
    this.setState({ interior_color: e.currentTarget.value });
  }

  updateWheelType(e) {
    this.setState({ wheel_type: e.currentTarget.value });
  }
  
  updateSelfDriving(e) {
    this.setState({ self_driving: e.currentTarget.value });
  }
  
  updateView(e) {
    this.setState({ view: e.currentTarget.value });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.requestProduct(this.state);
  }

  render() {
    // return (
      
    // );
  }
}

export default ProductShowForm;
