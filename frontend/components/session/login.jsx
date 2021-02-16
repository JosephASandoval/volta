import React from "react";
import { Link } from "react-router-dom";
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
    this.props.loginUser(this.state).then(() => this.props.history.push("/"));
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

  render() {
    return (
      <div className="login">
        <div className="login__header">
          <div className="login__logo">
            <Link to="/">
              <img src={window.voltaLogoURL} alt="Volta Logo" />
            </Link>
          </div>
          <div className="login__language">
            <LanguageOutlinedIcon /> <span>en-US</span>
          </div>
        </div>
        <div className="login__info">
          <h1>Sign In</h1>
          {this.props.errors.includes("Invalid username or password") && (
            <p>Invalid username or password</p>
          )}
          <form className="login__form">
            <label htmlFor="email">Email Address</label>
            <input
              className={
                this.props.errors.length !== 0 && this.state.email.length === 0
                  ? "login__inputErrors"
                  : "login__input"
              }
              id="email"
              type="email"
              value={this.state.email}
              onChange={this.update("email")}
            />

            <label htmlFor="password">Password</label>
            <input
              className={
                this.props.errors.length !== 0 && this.state.email.length === 0
                  ? "login__inputErrors"
                  : "login__input"
              }
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
            <button className="buttonSecondary" type="submit">
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
