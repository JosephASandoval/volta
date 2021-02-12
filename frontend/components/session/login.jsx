import React from "react";
import { Link } from "react-router-dom";

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

  // componentDidMount() {
  //     this.handleErrors;
  // }

  update(field) {
    return (e) => {
      this.setState({ [field]: e.currentTarget.value });
    };
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props
      .loginUser(this.state)
      .then(() => this.props.history.push("/greeting"));
  }

  handleErrors(e) {
    this.props.removeErrors();
  }

  handleDemo(e) {
    e.preventDefault();
    this.props
      .loginUser({
        email: "demouser@gmail.com",
        password: "password",
      })
      .then(() => this.props.history.push("/greeting"));
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
        <h2>Sign In</h2>
        <br />
        <form className="login-form-box">
          {this.renderErrors()}
          <br />
          <label>
            Email Address
            <input
              type="text"
              value={this.state.email}
              onChange={this.update("email")}
            />
          </label>
          <br />
          <label>
            Password
            <input
              type="password"
              value={this.state.password}
              onChange={this.update("password")}
            />
          </label>

          <br />

          <div className="button-boarder">
            <button onClick={this.handleSubmit}>SIGN IN</button>
            &nbsp;or&nbsp;

            <Link to="/signup" onClick={this.handleErrors}>
              CREATE ACCOUNT
            </Link>

            &nbsp;or&nbsp;
            <button onClick={this.handleDemo}>DEMO LOGIN</button>
          </div>
        </form>
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

export default Login;
