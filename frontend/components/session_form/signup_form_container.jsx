import { connect } from "react-redux";
import { signup } from "../../actions/session_actions";
import SignupForm from "./signup_form";

const mapDispatchToProps = (dispatch) => {
  return {
    createNewUser: (user) => dispatch(signup(user)),
  };
};

export default connect(null, mapDispatchToProps)(SignupForm);
