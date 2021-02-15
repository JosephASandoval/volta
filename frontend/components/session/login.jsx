import React from "react";
import { Link } from "react-router-dom";
import VoltaLogo from "./volta_logo";
import LanguageOutlinedIcon from "@material-ui/icons/LanguageOutlined";

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
    this.props.loginUser(this.state).then(() => this.props.history.push("/"));
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
      <div className="login">
        <div className="login__header">
          <VoltaLogo />
          <div className="login__language">
            <LanguageOutlinedIcon /> <span>en-US</span>
          </div>
        </div>
        <div className="login__info">
          <h1>Sign In</h1>
          <form className="login__form">
            {this.renderErrors()}
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

            <button
              className="buttonPrimary"
              type="submit"
              onClick={this.handleSubmit}
            >
              Sign In
            </button>
          </form>

          <div className="login__divider">
            <hr /> <span>OR</span> <hr />
          </div>

          <Link to="/signup">
            <button
              className="buttonSecondary"
              type="submit"
              onClick={this.handleErrors}
            >
              Create Account
            </button>
          </Link>

          <div className="login__divider">
            <hr /> <span>OR</span> <hr />
          </div>

          <button
            className="buttonDemo"
            type="submit"
            onClick={this.handleDemo}
          >
            Demo Login
          </button>
        </div>
      </div>
    );
  }
}

export default Login;
