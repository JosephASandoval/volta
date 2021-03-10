import React from "react";

class Model3Button extends React.Component {
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
        <div className="carButton__column">
          {/* <div>
              <p>
                $1,500 Clean Fuel Reward is now available for California
                residents.
              </p>
            </div> */}

          <div className="carButton__header">
            <h1>Model S</h1>
            <p>Estimated Delivery: 5-11 weeks</p>
          </div>

          {/* update exterior */}

          <h1>Paint</h1>
          <div className="carButton__paint">
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
          <h1>Wheels</h1>
          <div className="carButton__wheels">
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
          <h1>Interior</h1>
          <div className="carButton__interior">
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
        </div>

        <div className="carButton__selfDriving">
          <h1>Full Self-Driving Capability</h1>
          <h6>$10,000</h6>
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

          <h1>Order Your Model S</h1>
          <p>Estimated Delivery: 5-11 weeks</p>
          <div className="carButton_selfDriving">
            <button className="carButton__primary">Continue to Payment</button>
          </div>
        </div>
      </div>
    );
  }
}

export default Model3Button;
