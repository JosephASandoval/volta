import React from "react";
import { Link } from "react-router-dom";
import VoltaLogo from "./volta_logo";

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
    this.props
      .signupUser(this.state)
      .then(() => this.props.history.push("/"));
  }

  handleErrors(e) {
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
      <div className="session_form">
        <VoltaLogo />
        <h1>Create Account</h1>
        <form className="form_box">
          {this.renderErrors()}
          <label>
            First Name
            <input
              type="text"
              value={this.state.firstName}
              onChange={this.update("firstName")}
            />
          </label>
          <label>
            Last Name
            <input
              type="text"
              value={this.state.lastName}
              onChange={this.update("lastName")}
            />
          </label>
          <label>
            Username
            <input
              type="text"
              value={this.state.username}
              onChange={this.update("username")}
            />
          </label>
          <label>
            Email
            <input
              type="text"
              value={this.state.email}
              onChange={this.update("email")}
            />
          </label>
          <label>
            Password
            <input
              type="password"
              value={this.state.password}
              onChange={this.update("password")}
            />
          </label>

          <div>
            <button onClick={this.handleSubmit}>CREATE ACCOUNT</button>
            &nbsp;or&nbsp;
            <Link to="/login" onClick={this.handleErrors}>
              SIGN IN
            </Link>
          </div>
        </form>
      </div>
    );
  }
}

export default Signup;
