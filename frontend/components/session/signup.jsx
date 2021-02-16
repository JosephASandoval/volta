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
  }

  componentDidMount() {
    this.props.removeErrors();
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
          <h1>Create Account</h1>
          <form className="signup__form">
            <label htmlFor="first_name">First Name</label>
            <input
              className={
                this.props.errors.includes("First name can't be blank")
                  ? "signup__inputErrors"
                  : "signup__input"
              }
              id="first_name"
              type="text"
              value={this.state.first_name}
              onChange={this.update("first_name")}
            />
            {this.props.errors.includes("First name can't be blank") && (
              <p>Please enter a first name using letters only</p>
            )}

            <label htmlFor="last_name">Last Name</label>
            <input
              className={
                this.props.errors.includes("Last name can't be blank")
                  ? "signup__inputErrors"
                  : "signup__input"
              }
              id="last_name"
              type="text"
              value={this.state.last_name}
              onChange={this.update("last_name")}
            />
            {this.props.errors.includes("Last name can't be blank") && (
              <p>Please enter a last name using letters only</p>
            )}

            <label htmlFor="username">Username</label>
            <input
              className={
                this.props.errors.includes("Username can't be blank") ||
                this.props.errors.includes("Username has already been taken")
                  ? "signup__inputErrors"
                  : "signup__input"
              }
              id="username"
              type="text"
              value={this.state.username}
              onChange={this.update("username")}
            />
            {(this.props.errors.includes("Username can't be blank") && (
              <p>Username required</p>
            )) ||
              (this.props.errors.includes(
                "Username has already been taken"
              ) && <p>Username has already been taken</p>)}

            <label htmlFor="email">Email Address</label>
            <input
              className={
                this.props.errors.includes("Email is invalid") ||
                this.props.errors.includes("Email has already been taken")
                  ? "signup__inputErrors"
                  : "signup__input"
              }
              id="email"
              type="email"
              value={this.state.email}
              onChange={this.update("email")}
            />
            {(this.props.errors.includes("Email is invalid") && (
              <p>Please enter a valid email address</p>
            )) ||
              (this.props.errors.includes("Email has already been taken") && (
                <p>Email has already been taken</p>
              ))}

            <label htmlFor="password">Password</label>
            <input
              className={
                this.props.errors.includes(
                  "Password is too short (minimum is 6 characters)"
                )
                  ? "signup__inputErrors"
                  : "signup__input"
              }
              id="password"
              type="password"
              value={this.state.password}
              onChange={this.update("password")}
            />
            {this.state.password.length > 0 && this.state.password.length < 6
              ? this.props.errors.includes(
                  "Password is too short (minimum is 6 characters)"
                ) && <p>Password is too short (minimum is 6 characters)</p>
              : this.props.errors.includes(
                  "Password is too short (minimum is 6 characters)"
                ) && <p>Password required</p>}

            <button type="submit" onClick={this.handleSubmit}>
              Create Account
            </button>
          </form>

          <div className="signup__divider">
            <hr /> <span>OR</span> <hr />
          </div>

          <Link to="/login">
            <button>Sign In</button>
          </Link>
        </div>
      </div>
    );
  }
}

export default Signup;
