import { connect } from "react-redux";
import { requestAllProducts } from "../../../actions/product_actions";
import ModelsParent from "./models_parent";
import { addCartItem } from "../../../actions/cart_item_actions";
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
    cartItemsLen: count,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestAllProducts: () => dispatch(requestAllProducts()),
    addCartItem: (cartItem) => dispatch(addCartItem(cartItem)),
    logout: () => dispatch(logout()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(ModelsParent);
