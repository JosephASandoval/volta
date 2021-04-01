import { connect } from "react-redux";
import { login, removeErrors } from "../../actions/session_actions";
import Login from "./login";
import { fetchCartItems } from "../../actions/cart_item_actions";

const mapStateToProps = ({ errors }) => {
  return {
    errors: errors.sessionErrors,
  };
};

const mapDispatchToProps = (dispatch) => ({
  loginUser: (user) => dispatch(login(user)),
  removeErrors: () => dispatch(removeErrors()),
  fetchCartItems: () => dispatch(fetchCartItems()),
});

export default connect(mapStateToProps, mapDispatchToProps)(Login);
