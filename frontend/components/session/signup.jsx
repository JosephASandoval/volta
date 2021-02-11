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
  }

  update(field) {
    return (e) => {
      this.setState({ [field]: e.currentTarget.value });
    };
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props
      .createNewUser(this.state)
      .then(() => this.props.history.push("/greeting"));
  }

  render() {
    return (
      <div className="session-form">
        <h2>Create Account</h2>
        <form onSubmit={this.handleSubmit}>
          <label>
            First Name:
            <input
              type="text"
              value={this.state.first_name}
              onChange={this.update("first_name")}
            />
          </label>

          <label>
            Last Name:
            <input
              type="text"
              value={this.state.last_name}
              onChange={this.update("last_name")}
            />
          </label>

          <label>
            Username:
            <input
              type="text"
              value={this.state.username}
              onChange={this.update("username")}
            />
          </label>

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
            <button type="submit">CREATE ACCOUNT</button>
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

export default Signup;
