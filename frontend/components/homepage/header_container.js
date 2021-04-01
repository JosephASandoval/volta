import { connect } from "react-redux";
import { requestAllProducts } from "../../actions/product_actions";
import Header from "./header";

const mapStateToProps = ({
  session,
  entities: { users, products, cartItems },
}) => {
  let count = 0;
  Object.values(cartItems).forEach((obj) => {
    count += obj.quantity;
  });

  return {
    currentUser: users[session.id],
    products: Object.values(products),
    cartItemsLen: count,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestAllProducts: () => dispatch(requestAllProducts()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Header);
