import React from "react";
import { Link } from "react-router-dom";
import VoltaLogo from "./volta_logo";
import LanguageOutlinedIcon from "@material-ui/icons/LanguageOutlined";

class Signup extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      firstName: "",
      lastName: "",
      username: "",
      email: "",
      password: "",
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleErrors = this.handleErrors.bind(this);
  }

  update(field) {
    return (e) => {
      this.setState({ [field]: e.currentTarget.value });
    };
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.signupUser(this.state).then(() => this.props.history.push("/"));
  }

  handleErrors() {
    this.props.removeErrors();
  }

  renderErrors() {
    return (
      <ul>
        {this.props.errors.map((error, idx) => (
          <li key={`error-${idx}`}>{error}</li>
        ))}
      </ul>
    );
  }

  render() {
    return (
      <div className="signup">
        <div className="signup__header">
          <VoltaLogo />
          <div className="signup__language">
            <LanguageOutlinedIcon /> <span>en-US</span>
          </div>
        </div>

        <div className="signup__info">
          <h1>Create Account</h1>
          <form className="signup__form">
            {this.renderErrors()}
            <label>First Name</label>
            <input
              type="text"
              value={this.state.firstName}
              onChange={this.update("firstName")}
            />
            <label>Last Name</label>
            <input
              type="text"
              value={this.state.lastName}
              onChange={this.update("lastName")}
            />
            <label>Username</label>
            <input
              type="text"
              value={this.state.username}
              onChange={this.update("username")}
            />
            <label>Email Address</label>
            <input
              type="text"
              value={this.state.email}
              onChange={this.update("email")}
            />
            <label>Password</label>
            <input
              type="password"
              value={this.state.password}
              onChange={this.update("password")}
            />

            <button type="submit" onClick={this.handleSubmit}>
              Create Account
            </button>
          </form>

          <div className="signup__divider">
            <hr /> <span>OR</span> <hr />
          </div>

          <Link to="/login" onClick={this.handleErrors}>
            <button>Sign In</button>
          </Link>
        </div>
      </div>
    );
  }
}

export default Signup;
