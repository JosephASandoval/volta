import React from "react";
import { Link } from "react-router-dom";

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
    this.props
      .signupUser(this.state)
      .then(() => this.props.history.push("/greeting"));
  }

  handleErrors(e) {
    e.preventDefault();
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
      <div className="session-form">
        <h2>Create Account</h2>
        <br />
        <form className="login-form-box">
          {this.renderErrors()}
          <br />
          <label>
            First Name:
            <input
              type="text"
              value={this.state.first_name}
              onChange={this.update("first_name")}
            />
          </label>
          <br />
          <label>
            Last Name:
            <input
              type="text"
              value={this.state.last_name}
              onChange={this.update("last_name")}
            />
          </label>
          <br />
          <label>
            Username:
            <input
              type="text"
              value={this.state.username}
              onChange={this.update("username")}
            />
          </label>
          <br />
          <label>
            Email:
            <input
              type="text"
              value={this.state.email}
              onChange={this.update("email")}
            />
          </label>
          <br />
          <label>
            Password:
            <input
              type="password"
              value={this.state.password}
              onChange={this.update("password")}
            />
          </label>

          <br />

          <div className="button-boarder">
            <button onClick={this.handleSubmit}>CREATE ACCOUNT</button>
            &nbsp;or&nbsp;

            <Link to="/login" onClick={this.handleErrors}>SIGN IN</Link>
            
          </div>
        </form>
        <br />
        <br />
        <div className="header_logo">
          <Link to="/">
            <img src={window.teslaLogoSmallURL} alt="Tesla Logo" />
          </Link>
        </div>
      </div>
    );
  }
}

export default Signup;
