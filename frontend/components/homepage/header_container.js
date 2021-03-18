import { connect } from "react-redux";
import { requestAllProducts } from "../../actions/product_actions";
import Header from "./header";

const mapStateToProps = ({ session, entities: { users, products } }) => {
  return {
    currentUser: users[session.id],
    products: Object.values(products),
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestAllProducts: () => dispatch(requestAllProducts()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Header);
