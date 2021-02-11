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

  render() {
    return (
      <div className="session-form">
        <h2>Log In!</h2>
        <form onSubmit={this.handleSubmit}>
          <label>
            Email:
            <input
              type="text"
              value={this.state.email}
              onChange={this.update("email")}
            />
          </label>

          <label>
            Password:
            <input
              type="password"
              value={this.state.password}
              onChange={this.update("password")}
            />
            <button type="submit">SIGN IN</button>
          </label>
        </form>

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
