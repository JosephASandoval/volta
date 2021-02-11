import { connect } from "react-redux";
import { login } from "../../actions/session_actions";
import Login from "./login";

const mapStateToProps = ({ errors }) => {
  return {
    errors: errors.sessionErrors,
  };
};

const mapDispatchToProps = (dispatch) => ({
  loginUser: (user) => dispatch(login(user)),
});

export default connect(mapStateToProps, mapDispatchToProps)(Login);
