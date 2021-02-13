import React from "react";
import { Link } from "react-router-dom";

const UserProfile = ({ currentUser, logout }) => {
  return (
    <div>
      <h2>{currentUser.firstName}'s Tesla</h2>
      <button onClick={logout}>
        <Link to="/">Log Out</Link>
      </button>

      <div className="header_logo">
        <Link to="/">
          <img src={window.voltaLogoURL} alt="Tesla Logo" />
        </Link>
      </div>
    </div>
  );
};

export default UserProfile;
