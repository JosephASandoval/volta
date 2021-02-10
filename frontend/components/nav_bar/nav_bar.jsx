import React from "react";
import { Link } from "react-router-dom";

const NavBar = ({ currentUser, logout }) => {
  if (currentUser) {
    const display = (
      <div>
        <h3>Welcome {currentUser.username}!</h3>
        <button onClick={logout}>Logout</button>
      </div>
    );
  } else {
    const display = (
      <div>
        <Link className="btn" to="/signup">
          Sign Up
        </Link>
        <Link className="btn" to="/login">
          Log In
        </Link>
      </div>
    );
  }
  return (
    <header className="nav-bar">
      <h1 className="logo">VOLTA</h1>
      <div>{display}</div>
    </header>
  );
};

export default NavBar;
