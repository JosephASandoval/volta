import React from "react";
import { Link } from "react-router-dom";

const Header = ({ currentUser }) => {
  return currentUser ? (
    <div className="header">
      <div className="header__logo">
        <Link to="/">
          <img src={window.voltaLogoURL} alt="Volta Logo" />
        </Link>
      </div>

      <div className="header__center">
        <p>Model S</p>
        <p>Model 3</p>
        <p>Model X</p>
        <p>Model Y</p>
        <p>Solar Roof</p>
        <p>Solar Panels</p>
      </div>

      <div className="header__right">
        <p>Shop</p>
        <p>
          <Link to="/userProfile">Volta Account</Link>
        </p>
        <p>
          <i className="fas fa-bars"></i>
        </p>
      </div>
    </div>
  ) : (
    <div className="header">
      <div className="header__logo">
        <Link to="/">
          <img src={window.voltaLogoURL} alt="Volta Logo" />
        </Link>
      </div>

      <div className="header__center">
        <p>Model S</p>
        <p>Model 3</p>
        <p>Model X</p>
        <p>Model Y</p>
        <p>Solar Roof</p>
        <p>Solar Panels</p>
      </div>

      <div className="header__right">
        <p>Shop</p>
        <p>
          <Link to="/login">Volta Account</Link>
        </p>
        <p>
          <i className="fas fa-bars"></i>
        </p>
      </div>
    </div>
  );
};

export default Header;
