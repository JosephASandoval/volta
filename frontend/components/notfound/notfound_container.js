import { connect } from "react-redux";
import { logout } from "../../actions/session_actions";
import NotFound from "./notfound";

const mapStateToProps = ({ session, entities: { users, cartItems } }) => {
  let count = 0;
  Object.values(cartItems).forEach((obj) => {
    count += obj.quantity;
  });

  return {
    currentUser: users[session.id],
    cartItemsLen: count,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    logout: () => dispatch(logout()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(NotFound);
