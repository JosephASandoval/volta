import { connect } from "react-redux";
import { requestAllProducts } from "../../../actions/product_actions";
import ModelsParent from "./models_parent";
import {
  addCartItem,
  updateCartItem,
} from "../../../actions/cart_item_actions";

const mapStateToProps = ({
  session,
  entities: { products, cartItems, users },
}) => {
  return {
    products: Object.values(products),
    userId: session.id,
    currentUser: users[session.id],
    allProducts: products,
    allCartItems: cartItems,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestAllProducts: () => dispatch(requestAllProducts()),
    addCartItem: (cartItem) => dispatch(addCartItem(cartItem)),
    updateCartItem: (id, cartItem, increase) =>
      dispatch(updateCartItem(id, cartItem, increase)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(ModelsParent);
