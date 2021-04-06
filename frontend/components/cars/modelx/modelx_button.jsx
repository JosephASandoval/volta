import React from "react";
import { withRouter } from "react-router-dom";

class ModelxButton extends React.Component {
  constructor(props) {
    super(props);

    this.state = { value: 1 };
    this.handleChange = this.handleChange.bind(this);
    this.handleClick = this.handleClick.bind(this);

    this.handleExterior = this.handleExterior.bind(this);
    this.handleInterior = this.handleInterior.bind(this);
    this.handleWheelType = this.handleWheelType.bind(this);
    this.handleSelfDriving = this.handleSelfDriving.bind(this);
    this.handleView = this.handleView.bind(this);
  }

  handleClick(e) {
    e.preventDefault();

    const {
      currentUser,
      addCartItem,
      productId,
      userId,
      products,
    } = this.props;

    let firstProductId = products[0].id;
    let indexed = productId - firstProductId;
    let correctedIndex = indexed + 5;

    let newProductId;
    if (correctedIndex % 5 === 0) {
      newProductId = productId + 1;
    } else if ((correctedIndex - 1) % 5 === 0) {
      newProductId = productId;
    } else if ((correctedIndex - 2) % 5 === 0) {
      newProductId = productId - 1;
    } else if ((correctedIndex - 3) % 5 === 0) {
      newProductId = productId - 2;
    } else if ((correctedIndex - 4) % 5 === 0) {
      newProductId = productId - 3;
    }

    const cartItem = {
      product_id: newProductId,
      user_id: userId,
      quantity: this.state.value,
    };

    if (currentUser) {
      addCartItem(cartItem).then(() => this.props.history.push("/cart"));
    } else {
      this.props.history.push("/login");
    }
  }

  handleChange(e) {
    this.setState({ value: parseInt(e.target.value, 10) });
  }

  handleExterior(e) {
    e.preventDefault();
    this.props.updateExterior(e.currentTarget.value);
  }

  handleInterior(e) {
    e.preventDefault();
    this.props.updateInterior(e.currentTarget.value);
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
            <h1>Model X</h1>
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
              value='20" Cyberstream Wheels'
              onClick={this.handleWheelType}
            >
              <img src={window.cyberstreamURL} alt='20" Cyberstream' />
            </button>

            <button
              type="submit"
              value='22" Turbine Wheels'
              onClick={this.handleWheelType}
            >
              <img src={window.turbineURL} alt='22" Turbine' />
            </button>
          </div>

          {/* update interior */}
          <h1>Interior</h1>
          <div className="carButton__interior">
            <button
              type="submit"
              value="All Black"
              onClick={this.handleInterior}
            >
              <img src={window.interiorBlackURL} alt="Interior Black" />
            </button>

            <button
              type="submit"
              value="Black and White"
              onClick={this.handleInterior}
            >
              <img src={window.interiorWhiteURL} alt="Interior White" />
            </button>

            <button type="submit" value="Cream" onClick={this.handleInterior}>
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
          <div className="carButton__selfDrivingButton">
            <button
              className="carButton__primary"
              type="submit"
              value="true"
              onClick={this.handleSelfDriving}
            >
              Add Feature
            </button>

            <button
              className="carButton__secondary"
              type="submit"
              value="false"
              onClick={this.handleSelfDriving}
            >
              Remove Feature
            </button>
          </div>

          <h1>Order Your Model X</h1>
          <p>Estimated Delivery: 5-11 weeks</p>

          <div className="carButton__selfDrivingButton">
            <button className="carButton__primary" onClick={this.handleClick}>
              Add to cart
            </button>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(ModelxButton);
