import React from "react";
import { Link } from "react-router-dom";
import LanguageOutlinedIcon from "@material-ui/icons/LanguageOutlined";

class Signup extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      first_name: "",
      last_name: "",
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
          <div className="signup__logo">
            <Link to="/">
              <img src={window.voltaLogoURL} alt="Volta Logo" />
            </Link>
          </div>
          <div className="signup__language">
            <LanguageOutlinedIcon /> <span>en-US</span>
          </div>
        </div>

        <div className="signup__info">
          {this.renderErrors()}
          <h1>Create Account</h1>
          <form className="signup__form">
            <label htmlFor="first_name">First Name</label>
            <input
              id="first_name"
              type="text"
              value={this.state.first_name}
              onChange={this.update("first_name")}
            />
            <label htmlFor="last_name">Last Name</label>
            <input
              id="last_name"
              type="text"
              value={this.state.last_name}
              onChange={this.update("last_name")}
            />
            <label htmlFor="username">Username</label>
            <input
              id="username"
              type="text"
              value={this.state.username}
              onChange={this.update("username")}
            />
            <label htmlFor="email">Email Address</label>
            <input
              id="email"
              type="email"
              value={this.state.email}
              onChange={this.update("email")}
            />
            <label htmlFor="password">Password</label>
            <input
              id="password"
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
