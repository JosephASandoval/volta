import React from "react";
import { Link } from "react-router-dom";

const Greeting = ({ currentUser, logout }) => {
  return (
    <hgroup>
      <h2>Hi, {currentUser.username}!</h2>
      <button onClick={logout}>
        <Link to="/">Log Out</Link>
      </button>

      <div className="header_logo">
        <Link to="/">
          <img src={window.teslaLogoSmallURL} alt="Tesla Logo" />
        </Link>
      </div>
    </hgroup>
  );
};

export default Greeting;
