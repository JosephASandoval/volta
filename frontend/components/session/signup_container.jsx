import { connect } from "react-redux";
import { signup } from "../../actions/session_actions";
import Signup from "./signup";

const mapStateToProps = ({ errors }) => {
  return {
    errors: errors.sessionErrors,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    signupUser: (user) => dispatch(signup(user)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Signup);
