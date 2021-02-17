import { connect } from "react-redux";
import Header from "./header";

const mapStateToProps = ({ session, entities: { users } }) => {
  return {
    currentUser: users[session.id],
  };
};

export default connect(mapStateToProps)(Header);
