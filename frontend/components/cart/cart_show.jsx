import React from "react";
import CartItem from "./cart_item";
import CartHeader from "./cart_header";
import { withRouter } from "react-router-dom";

class CartShow extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      isMenuOpen: false,
    };

    this.sumQuantity = this.sumQuantity.bind(this);
    this.setIsMenuOpen = this.setIsMenuOpen.bind(this);
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

  setIsMenuOpen() {
    this.setState({
      isMenuOpen: !this.state.isMenuOpen,
    });
  }

  render() {
    const items = this.props.items.map((item) => {
      return (
        <div className={this.state.isMenuOpen ? "background-dim" : ""}>
          <div className="item-group">
            <CartItem
              key={item.id}
              item={item}
              updateCartItem={this.props.updateCartItem}
              deleteCartItem={this.props.deleteCartItem}
              products={this.props.products}
            />
          </div>
        </div>
      );
    });

    let total = 0.0;
    if (this.props.items.length !== 0) {
      this.props.items.forEach(
        (item) => (total += parseFloat(item.totalPrice))
      );
    }

    let tax = 0.0;
    if (this.props.items.length !== 0) {
      this.props.items.forEach(
        (item) => (tax += 0.075 * parseFloat(item.totalPrice))
      );
    }

    let final = 0.0;
    if (this.props.items.length !== 0) {
      final = total + tax;
    }

    const checkout =
      total === 0.0 ? (
        ""
      ) : (
        <div>
          <div className="total">
            <span>Items Price:</span>
            <span>${total.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, "$&,")}</span>
          </div>
          <div className="total">
            <span>Tax Price:</span>
            <span>${tax.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, "$&,")}</span>
          </div>
          <div className="total">
            <span>Shipping Price:</span>
            <span>${0.0}</span>
          </div>
          <div className="final">
            <span>Total Price:</span>
            <span>${final.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, "$&,")}</span>
          </div>
          <button className="checkout-btn">Checkout</button>
        </div>
      );

    const len = this.sumQuantity();

    const headerMsg = len === 0 ? "Cart is empty" : "";

    const cls = len === 0 ? "no-payment" : "payment-box";

    return (
      <div>
        <div>
          <CartHeader
            currentUser={this.props.currentUser}
            logout={this.props.logout}
            cartItemsLen={this.props.cartItemsLen}
            isMenuOpen={this.state.isMenuOpen}
            setIsMenuOpen={this.setIsMenuOpen}
          />
        </div>
        <div className={this.state.isMenuOpen ? "background-dim" : ""}>
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
        </div>
      </div>
    );
  }
}
export default withRouter(CartShow);
