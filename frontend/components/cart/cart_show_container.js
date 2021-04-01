import CartShow from "./cart_show";
import {
  fetchCartItems,
  deleteCartItem,
  updateCartItem,
} from "../../actions/cart_item_actions";
import { connect } from "react-redux";

const mapStateToProps = ({ entities: { cartItems } }) => {
  return {
    items: Object.keys(cartItems).map((key) => cartItems[key]), // returns all of the items in your cart
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    fetchCartItems: () => dispatch(fetchCartItems()),
    deleteCartItem: (id) => dispatch(deleteCartItem(id)),
    updateCartItem: (id, cart_item, increase) =>
      dispatch(updateCartItem(id, cart_item, increase)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(CartShow);
