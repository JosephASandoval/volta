import { connect } from "react-redux";
import { login, removeErrors } from "../../actions/session_actions";
import Login from "./login";

const mapStateToProps = ({ errors }) => {
  return {
    errors: errors.sessionErrors,
  };
};

const mapDispatchToProps = (dispatch) => ({
  loginUser: (user) => dispatch(login(user)),
  removeErrors: () => dispatch(removeErrors()),
});

export default connect(mapStateToProps, mapDispatchToProps)(Login);
