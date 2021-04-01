import React from "react";
import CartItem from "./cart_item";
import CartHeader from "./cart_header";
import { withRouter } from "react-router-dom";

class CartShow extends React.Component {
  constructor(props) {
    super(props);

    this.sumQuantity = this.sumQuantity.bind(this);
  }
  componentDidMount() {
    this.props.fetchCartItems();
  }

  sumQuantity() {
    let count = 0;

    this.props.items.forEach((obj) => {
      count += obj.quantity;
    });

    return count;
  }

  render() {
    const items = this.props.items.map((item) => {
      return (
        <div>
          <CartItem
            key={item.id}
            item={item}
            updateCartItem={this.props.updateCartItem}
            deleteCartItem={this.props.deleteCartItem}
            products={this.props.products}
          />
        </div>
      );
    });

    let total = 0.0;
    if (this.props.items.length !== 0) {
      this.props.items.forEach(
        (item) => (total += parseFloat(item.totalPrice))
      );
    }

    const checkout =
      total === 0.0 ? (
        ""
      ) : (
        <div>
          <div className="total">
            <span>Item(s) total:</span>
            <span>${total.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, "$&,")}</span>
          </div>
          <button className="checkout-btn">Proceed to checkout</button>
        </div>
      );

    const len = this.sumQuantity();

    const headerMsg =
      len === 0 ? "Your cart is empty." : `${len} items in your cart.`;

    const cls = len === 0 ? "no-payment" : "payment-box";

    return (
      <>
        <div>
          <CartHeader
            currentUser={this.props.currentUser}
            logout={this.props.logout}
            cartItemsLen={this.props.cartItemsLen}
          />
        </div>
        <div className="cart-show-page clrfix">
          <div className="cart-col content">
            <div className="cart-title-msg">
              <p>{headerMsg}</p>
            </div>
            <div className="item-container">
              <ul>{items}</ul>
            </div>
          </div>
          <div className="cart-col payment">
            <aside className={cls}>{checkout}</aside>
          </div>
        </div>
      </>
    );
  }
}
export default withRouter(CartShow);
