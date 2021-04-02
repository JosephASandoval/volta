import { connect } from "react-redux";
import { requestAllProducts } from "../../../actions/product_actions";
import Model3Parent from "./model3_parent";
import {
  addCartItem,
  updateCartItem,
} from "../../../actions/cart_item_actions";
import { logout } from "../../../actions/session_actions";

const mapStateToProps = ({
  session,
  entities: { products, cartItems, users },
}) => {
  let count = 0;
  Object.values(cartItems).forEach((obj) => {
    count += obj.quantity;
  });

  return {
    products: Object.values(products),
    userId: session.id,
    currentUser: users[session.id],
    allProducts: products,
    allCartItems: cartItems,
    cartItemsLen: count,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestAllProducts: () => dispatch(requestAllProducts()),
    addCartItem: (cartItem) => dispatch(addCartItem(cartItem)),
    updateCartItem: (id, cartItem, increase) =>
      dispatch(updateCartItem(id, cartItem, increase)),
    logout: () => dispatch(logout()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Model3Parent);
