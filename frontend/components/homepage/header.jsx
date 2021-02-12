import React from "react";
import { Link } from "react-router-dom";

const Header = ({currentUser}) => {
  return currentUser ? (
    <div className="header">
      <div className="header_logo">
        <Link to="/">
          <img src={window.teslaLogoSmallURL} alt="Tesla Logo" />
        </Link>
      </div>

      <div className="header_center">
        <p>Model S</p>
        <p>Model 3</p>
        <p>Model X</p>
        <p>Model Y</p>
        <p>Solar Roof</p>
        <p>Solar Panels</p>
      </div>

      <div className="header_right">
        <p>Shop</p>
        <p>
          <Link to="/greeting">Tesla Account</Link>
        </p>
        <p>
          <i className="fas fa-bars"></i>
        </p>
      </div>
    </div>
  ) : (
    <div className="header">
      <div className="header_logo">
        <Link to="/">
          <img src={window.teslaLogoSmallURL} alt="Tesla Logo" />
        </Link>
      </div>

      <div className="header_center">
        <p>Model S</p>
        <p>Model 3</p>
        <p>Model X</p>
        <p>Model Y</p>
        <p>Solar Roof</p>
        <p>Solar Panels</p>
      </div>

      <div className="header_right">
        <p>Shop</p>
        <p>
          <Link to="/login">Tesla Account</Link>
        </p>
        <p>
          <i className="fas fa-bars"></i>
        </p>
      </div>
    </div>
  );
};

export default Header;