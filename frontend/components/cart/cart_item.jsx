import React from "react";
import { withRouter, Link } from "react-router-dom";

class CartItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = { quantity: this.props.item.quantity };

    this.removeItem = this.removeItem.bind(this);
    this.updateDB = this.updateDB.bind(this);

    this.increment = this.increment.bind(this);
    this.decrement = this.decrement.bind(this);
  }

  decrement() {
    this.setState(
      {
        quantity:
          this.props.item.quantity === 1 ? 1 : this.props.item.quantity - 1,
      },
      () => {
        this.updateDB();
      }
    );
  }

  increment() {
    this.setState(
      {
        quantity:
          this.props.item.quantity === 10 ? 10 : this.props.item.quantity + 1,
      },
      () => {
        this.updateDB();
      }
    );
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

        <div className="item-row">
          <div className="item-col photo">
            <Link to={`${item.name.split(" ").join("").toLowerCase()}`}>
              <img src={item.photoUrl} alt="" />
            </Link>
          </div>

          <div className="item-col bottom__cart">
            <p>Quantity: </p>
            <div className="inc-dec">
              <button onClick={() => this.decrement()} className="remove">
                -
              </button>
              <span>{this.state.quantity}</span>
              <button onClick={() => this.increment()} className="add">
                +
              </button>
            </div>
            <p>Price: </p>
            <div className="display-price">
              ${item.totalPrice.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, "$&,")}
            </div>

            <button onClick={this.removeItem} className="buttonSecondary">
              Remove
            </button>
          </div>
        </div>
      </li>
    );
  }
}

export default withRouter(CartItem);
