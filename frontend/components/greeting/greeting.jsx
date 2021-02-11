import React from "react";
import { Link } from "react-router-dom";

const Greeting = ({ currentUser, logout }) => {
  const sessionLinks = () => (
    <div>
      <h1>Welcome to Volta!</h1>
      <nav className="btn">
        <Link to="/login">Login</Link>
        &nbsp;or&nbsp;
        <Link to="/signup">Sign up!</Link>
      </nav>
    </div>
  );
  const personalGreeting = () => (
    <div>
      <h2>Hi, {currentUser.username}!</h2>
      <button onClick={logout}>
        Log Out
      </button>
    </div>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};

export default Greeting;

