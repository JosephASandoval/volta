import React, { useState } from "react";
import { Link } from "react-router-dom";
import Menu from "../homepage/menu";
import MenuIcon from "@material-ui/icons/Menu";
import CloseIcon from "@material-ui/icons/Close";

const NotFound = ({ currentUser, logout }) => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  return (
    <div className="userProfile">
      <div className="userProfile__header">
        <div className="userProfile__logo">
          <Link to="/">
            <img src={window.voltaLogoURL} alt="Volta Logo" />
          </Link>
        </div>
        <div className="userProfile__links">
          <Link to="/">Model S</Link>
          <Link to="/">Model 3</Link>
          <Link to="/">Model X</Link>
          <Link to="/">Model Y</Link>
          <Link to="/">Solar Roof</Link>
          <Link to="/">Solar Panels</Link>
        </div>

        <div className="userProfile__right">
          <Link to="/">Shop</Link>
          {currentUser ? (
            <Link to="/userProfile">Volta Account</Link>
          ) : (
            <Link to="/login">Volta Account</Link>
          )}
          {currentUser ? (
            <Link to="/" onClick={logout}>
              Log out
            </Link>
          ) : (
            <Link to="/">Log out</Link>
          )}
          <div
            className="userProfile__menu"
            onClick={() => setIsMenuOpen(!isMenuOpen)}
          >
            {isMenuOpen ? (
              <CloseIcon className="userProfile__closeMenu" />
            ) : (
              <MenuIcon />
            )}
          </div>
        </div>
      </div>
      {isMenuOpen && <Menu />}
      <div className="not-found">
        <h1>Page Not Found</h1>
      </div>
    </div>
  );
};

export default NotFound;
