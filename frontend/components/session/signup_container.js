import { connect } from "react-redux";
import { login, signup, removeErrors } from "../../actions/session_actions";
import Signup from "./signup";
import { fetchCartItems } from "../../actions/cart_item_actions";

const mapStateToProps = ({ errors }) => {
  return {
    errors: errors.sessionErrors,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    loginUser: (user) => dispatch(login(user)),
    signupUser: (user) => dispatch(signup(user)),
    removeErrors: () => dispatch(removeErrors()),
    fetchCartItems: () => dispatch(fetchCartItems()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Signup);
