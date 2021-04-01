import React from "react";
import { withRouter, Link } from "react-router-dom";

class CartItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = { quantity: this.props.item.quantity };

    this.removeItem = this.removeItem.bind(this);
    this.handleChange = this.handleChange.bind(this);
    this.updateDB = this.updateDB.bind(this);
  }

  handleChange(e) {
    this.setState({ quantity: parseInt(e.target.value) }, () => {
      this.updateDB();
    });
  }

  updateDB() {
    const { item } = this.props;

    const cart_item = {
      product_id: item.product_id,
      user_id: item.user_id,
      quantity: this.state.quantity,
    };

    const increase = false;
    this.props.updateCartItem(item.id, cart_item, increase);
  }

  removeItem(e) {
    this.props.deleteCartItem(this.props.item.id);
  }

  render() {
    const { item } = this.props; // all items in cart according to json data and the photoUrl is of the product

    return (
      <li key={item.id} className="items-li clrfx">
        <div className="item__name">
          <p>{item.name}</p>
        </div>
        <div className="item-col photo">
          <Link to={`${item.name.split(" ").join("").toLowerCase()}`}>
            <img src={item.photoUrl} alt="" />
          </Link>
        </div>
        <button onClick={this.removeItem} className="remove-btn">
          Remove
        </button>
        <div className="item-col">
          <select
            value={this.state.quantity}
            onChange={this.handleChange}
            className="qty-cart-page"
          >
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
          </select>
        </div>

        <div className="item-col price">
          <p>
            ${item.totalPrice.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, "$&,")}
          </p>
        </div>
      </li>
    );
  }
}

export default withRouter(CartItem);
