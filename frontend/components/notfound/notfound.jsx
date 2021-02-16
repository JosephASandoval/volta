import React, { useState } from "react";
import { Link } from "react-router-dom";
import Menu from "../homepage/menu";
import MenuIcon from "@material-ui/icons/Menu";
import CloseIcon from "@material-ui/icons/Close";

const NotFound = ({ currentUser, logout }) => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  return (
    <div className="notFound">
      <div className="notFound__header">
        <div className="notFound__logo">
          <Link to="/">
            <img src={window.voltaLogoURL} alt="Volta Logo" />
          </Link>
        </div>
        <div className="notFound__links">
          <Link to="/">Model S</Link>
          <Link to="/">Model 3</Link>
          <Link to="/">Model X</Link>
          <Link to="/">Model Y</Link>
          <Link to="/">Solar Roof</Link>
          <Link to="/">Solar Panels</Link>
        </div>

        <div className="notFound__right">
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
            className="notFound__menu"
            onClick={() => setIsMenuOpen(!isMenuOpen)}
          >
            {isMenuOpen ? (
              <CloseIcon className="notFound__closeMenu" />
            ) : (
              <MenuIcon />
            )}
          </div>
        </div>
      </div>
      {isMenuOpen && <Menu />}
      <div className="notFound__container">
        <div className="notFound__firstMessage">
          <h1>404</h1>
          <div className="notFound__secondMessage">
            <p>I'm afraid I can't do that.</p>
          </div>
        </div>
        <div className="notFound__starman">
          <img src={window.starmanURL} alt="starman" />
        </div>
      </div>
    </div>
  );
};

export default NotFound;