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
      <div className="carButton">
        <div className="">
          <div>
            <p>
              $1,500 Clean Fuel Reward is now available for California
              residents.
            </p>
          </div>

          <h1>Model S</h1>
          <p>Estimated Delivery: 5-11 weeks</p>

          {/* update exterior */}
          <div className="carButton__paint">
            <h1>Paint</h1>
            <button
              type="submit"
              value="Pearl White Multi-Coat"
              onClick={this.handleExterior}
            >
              <img src={window.paintWhiteURL} alt="Paint White" />
            </button>

            <button
              type="submit"
              value="Solid Black"
              onClick={this.handleExterior}
            >
              <img src={window.paintBlackURL} alt="Paint Black" />
            </button>

            <button
              type="submit"
              value="Midnight Silver Metallic"
              onClick={this.handleExterior}
            >
              <img
                src={window.paintMidnightSilverURL}
                alt="Paint MidnightSilver"
              />
            </button>

            <button
              type="submit"
              value="Deep Blue Metallic"
              onClick={this.handleExterior}
            >
              <img src={window.paintBlueURL} alt="Paint Blue" />
            </button>

            <button
              type="submit"
              value="Red Multi-Coat"
              onClick={this.handleExterior}
            >
              <img src={window.paintRedURL} alt="Paint Red" />
            </button>
          </div>

          {/* update wheel type */}
          <div className="carButton__wheels">
            <h1>Wheels</h1>
            <button
              type="submit"
              value='19"Tempest Wheels'
              onClick={this.handleWheelType}
            >
              <img src={window.tempestURL} alt='19" Tempest' />
            </button>

            <button
              type="submit"
              value='21" Arachnid Wheels'
              onClick={this.handleWheelType}
            >
              <img src={window.arachnidURL} alt='21" Arachnid' />
            </button>
          </div>

          {/* update interior */}
          <div className="carButton__interior">
            <h1>Interior</h1>
            <button
              type="submit"
              value="All Black"
              onClick={this.handleInteriorColor}
            >
              <img src={window.interiorBlackURL} alt="Interior Black" />
            </button>

            <button
              type="submit"
              value="Black and White"
              onClick={this.handleInteriorColor}
            >
              <img src={window.interiorWhiteURL} alt="Interior White" />
            </button>

            <button
              type="submit"
              value="Cream"
              onClick={this.handleInteriorColor}
            >
              <img src={window.interiorCreamURL} alt="Interior Cream" />
            </button>
          </div>

          <h1>Full Self-Driving Capability</h1>
          <p>$10,000</p>
          <ul>
            <li>Navigate on Autopilot</li>
            <li>Auto Lane Change</li>
            <li>Autopark</li>
            <li>Summon</li>
            <li>Full Self-Driving Computer</li>
            <li>Traffic Light and Stop Sign Control Coming later this year</li>
            <li>Autosteer on city streets</li>
          </ul>
          <p>
            The currently enabled features require active driver supervision and
            do not make the vehicle autonomous. The activation and use of these
            features are dependent on achieving reliability far in excess of
            human drivers as demonstrated by billions of miles of experience, as
            well as regulatory approval, which may take longer in some
            jurisdictions. As these self-driving features evolve, your car will
            be continuously upgraded through over-the-air software updates.
          </p>

          {/* Update self driving */}
          <div className="carButton_selfDriving">
            <button
              className="carButton__primary"
              type="submit"
              value="true"
              onClick={this.handleSelfDriving}
            >
              Add
            </button>

            <button
              className="carButton__secondary"
              type="submit"
              value="false"
              onClick={this.handleSelfDriving}
            >
              Feature Details
            </button>
          </div>

          {/* <div className="item__actions">
            <button className="item__buttonPrimary">Add</button>
            <button className="item__buttonSecondary">Feature Details</button>
          </div> */}

          <h1>Order Your Model S</h1>
          <p>Estimated Delivery: 5-11 weeks</p>
          <div className="item__actions">
            <button className="item__buttonPrimary">Continue to Payment</button>
          </div>
        </div>

        {/* update exterior */}
        {/* <button
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
        </button> */}

        {/* <button
          className="buttonTest"
          type="submit"
          value="Midnight Silver Metallic"
          onClick={this.handleExterior}
        >
          Midnight Silver Metallic
        </button> */}

        {/* <button
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
        </button> */}

        {/* update view */}
        {/* <button
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
        </button> */}

        {/* update interior color */}
        {/* <button
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
        </button> */}

        {/* update wheel type */}
        {/* <button
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
        </button> */}

        {/* Update self driving */}
        {/* <button
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
        </button> */}
      </div>
    );
  }
}

export default CarButton;
