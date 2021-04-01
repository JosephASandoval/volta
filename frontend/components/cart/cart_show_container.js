import CartShow from "./cart_show";
import {
  fetchCartItems,
  deleteCartItem,
  updateCartItem,
} from "../../actions/cart_item_actions";
import { logout } from "../../actions/session_actions";
import { connect } from "react-redux";

const mapStateToProps = ({ session, entities: { users, cartItems } }) => {
  let count = 0;
  Object.values(cartItems).forEach((obj) => {
    count += obj.quantity;
  });

  return {
    items: Object.keys(cartItems).map((key) => cartItems[key]), // returns all of the items in your cart
    currentUser: users[session.id],
    cartItemsLen: count,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    fetchCartItems: () => dispatch(fetchCartItems()),
    deleteCartItem: (id) => dispatch(deleteCartItem(id)),
    updateCartItem: (id, cart_item, increase) =>
      dispatch(updateCartItem(id, cart_item, increase)),
    logout: () => dispatch(logout()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(CartShow);
