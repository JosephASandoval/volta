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
        <form onSubmit={this.handleSubmit} className="login-form-box">
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
          <button type="submit" className="button-boarder">SIGN IN</button>
          &nbsp;or&nbsp;
          <div className="button-boarder">
            <p>
              <Link to="/signup">CREATE ACCOUNT</Link>
            </p>
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
