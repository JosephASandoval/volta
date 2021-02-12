import React from "react";
import { Link } from "react-router-dom";

const Greeting = ({ currentUser, logout }) => {
  const sessionLinks = () => (
    <nav className="login-form-container">
      <nav className="login-form">
        <Link to="/login">Login</Link>
        &nbsp;or&nbsp;
        <Link to="/signup">Sign up!</Link>
      </nav>

      <div className="header_logo">
        <Link to="/">
          <img src={window.teslaLogoSmallURL} alt="Tesla Logo" />
        </Link>
      </div>
    </nav>
  );
  const personalGreeting = () => (
    <hgroup className="hr">
      <h2 className="header-name">Hi, {currentUser.username}!</h2>
      <button className="review-button" onClick={logout}>
        <Link to="/">Log Out</Link>
      </button>

      <div className="header_logo">
        <Link to="/">
          <img src={window.teslaLogoSmallURL} alt="Tesla Logo" />
        </Link>
      </div>
    </hgroup>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};

export default Greeting;
