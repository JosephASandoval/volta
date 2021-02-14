import React from "react";
import { Link } from "react-router-dom";
import VoltaLogo from "./volta_logo";

class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      password: "",
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemo = this.handleDemo.bind(this);
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
      .loginUser(this.state)
      .then(() => this.props.history.push("/"));
  }

  handleErrors() {
    this.props.removeErrors();
  }

  handleDemo(e) {
    e.preventDefault();
    this.props
      .loginUser({
        email: "demouser@gmail.com",
        password: "password",
      })
      .then(() => this.props.history.push("/"));
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
        <h1>Sign In</h1>
        <form className="form_box">
          {this.renderErrors()}
          <label>
            Email Address
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


          <Link to="/signup" onClick={this.handleErrors}>
            CREATE ACCOUNT
          </Link>
          &nbsp;or&nbsp;
          <button onClick={this.handleSubmit}>SIGN IN</button>
          &nbsp;or&nbsp;
          <button onClick={this.handleDemo}>DEMO LOGIN</button>
        </form>
      </div>
    );
  }
}

export default Login;
