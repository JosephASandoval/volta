import React from "react";
import { withRouter } from "react-router-dom";

class ModelyButton extends React.Component {
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
      updateCartItem,
      productId,
      userId,
      cartItemId,
    } = this.props;

    let newProductId;
    if (productId % 5 === 0) {
      newProductId = productId;
    } else if ((productId + 1) % 5 === 0) {
      newProductId = productId + 1;
    } else if ((productId - 1) % 5 === 0) {
      newProductId = productId - 1;
    } else if ((productId - 2) % 5 === 0) {
      newProductId = productId - 2;
    } else if ((productId - 3) % 5 === 0) {
      newProductId = productId - 3;
    }

    const cartItem = {
      product_id: newProductId,
      user_id: userId,
      quantity: this.state.value,
    };

    if (currentUser) {
      const increase = true;
      cartItemId
        ? updateCartItem(cartItemId, cartItem, increase)
        : addCartItem(cartItem);
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
    const { product } = this.props;
    if (product === undefined) return null;
    if (!product.photoUrl) return null;

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
            <h1>Model Y</h1>
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
              value='19" Gemini Wheels'
              onClick={this.handleWheelType}
            >
              <img src={window.geminiURL} alt='19" Gemini' />
            </button>

            <button
              type="submit"
              value='20" Induction Wheels'
              onClick={this.handleWheelType}
            >
              <img src={window.inductionURL} alt='20" Induction' />
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

          <h1>Order Your Model Y</h1>
          <p>Estimated Delivery: 5-11 weeks</p>
          <div className="carButton_selfDriving">
            <button className="carButton__primary">Continue to Payment</button>
          </div>
          <div className="col col-1-3">
            <aside className="aside">
              <h1>{product.name}</h1>
              <p>
                ${product.price.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, "$&,")}
              </p>
              <span>Qty:</span>
              <select
                value={this.state.value}
                onChange={this.handleChange}
                className="qty-show-page"
              >
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
              </select>
              <button className="add-to-cart-btn" onClick={this.handleClick}>
                Add to cart
              </button>
            </aside>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(ModelyButton);
