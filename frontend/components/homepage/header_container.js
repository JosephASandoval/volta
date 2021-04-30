import { connect } from "react-redux";
import { fetchReviews } from "../../actions/review_actions";
import Header from "./header";

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
    fetchReviews: () => dispatch(fetchReviews()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Header);
