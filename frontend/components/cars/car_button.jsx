import React from "react";
import { Link } from "react-router-dom";

class CarButton extends React.Component {
  constructor(props) {
    super(props);

    this.handleExterior = this.handleExterior.bind(this);
    this.handleInteriorColor = this.handleInteriorColor.bind(this);
    this.handleWheelType = this.handleWheelType.bind(this);
    this.handleSelfDriving = this.handleSelfDriving.bind(this);
    this.handleView = this.handleView.bind(this);
  }

  handleExterior(e) {
    e.preventDefault();
    this.props.updateExterior(e.currentTarget.value);
  }

  handleInteriorColor(e) {
    e.preventDefault();
    this.props.updateInteriorColor(e.currentTarget.value);
  }

  handleWheelType(e) {
    e.preventDefault();
    this.props.updateWheelType(e.currentTarget.value);
  }

  handleSelfDriving(e) {
    e.preventDefault();
    this.props.updateSelfDriving(e.currentTarget.value);
  }

  handleView(e) {
    e.preventDefault();
    this.props.updateView(e.currentTarget.value);
  }

  render() {
    return (
      <div>

        {/* update exterior */}
        <button
          className="buttonTest"
          type="submit"
          value="Pearl White Multi-Coat"
          onClick={this.handleExterior}
        >
          Pearl White Multi-Coat
        </button>

        <button
          className="buttonTest"
          type="submit"
          value="Solid Black"
          onClick={this.handleExterior}
        >
          Solid Black
        </button>

        <button
          className="buttonTest"
          type="submit"
          value="Midnight Silver Metallic"
          onClick={this.handleExterior}
        >
          Midnight Silver Metallic
        </button>

        <button
          className="buttonTest"
          type="submit"
          value="Deep Blue Metallic"
          onClick={this.handleExterior}
        >
          Deep Blue Metallic
        </button>

        <button
          className="buttonTest"
          type="submit"
          value="Red Multi-Coat"
          onClick={this.handleExterior}
        >
          Red Multi-Coat
        </button>

        {/* update view */}
        <button
          className="buttonTest"
          type="submit"
          value="right"
          onClick={this.handleView}
        >
          Right +
        </button>

        <button
          className="buttonTest"
          type="submit"
          value="left"
          onClick={this.handleView}
        >
          Left -
        </button>

        {/* update interior color */}
        <button
          className="buttonTest"
          type="submit"
          value="All Black"
          onClick={this.handleInteriorColor}
        >
          All Black
        </button>

        <button
          className="buttonTest"
          type="submit"
          value="Black and White"
          onClick={this.handleInteriorColor}
        >
          Black and White
        </button>

        <button
          className="buttonTest"
          type="submit"
          value="Cream"
          onClick={this.handleInteriorColor}
        >
          Cream
        </button>

        {/* update wheel type */}
        <button
          className="buttonTest"
          type="submit"
          value='19"Tempest Wheels'
          onClick={this.handleWheelType}
        >
          19" Tempest Wheels
        </button>

        <button
          className="buttonTest"
          type="submit"
          value='21" Arachnid Wheels'
          onClick={this.handleWheelType}
        >
          21" Arachnid Wheels
        </button>

        {/* Update self driving */}
        <button
          className="buttonTest"
          type="submit"
          value="true"
          onClick={this.handleSelfDriving}
        >
          true self driving
        </button>

        <button
          className="buttonTest"
          type="submit"
          value="false"
          onClick={this.handleSelfDriving}
        >
          false self driving
        </button>
      </div>
    );
  }
}

export default CarButton;
