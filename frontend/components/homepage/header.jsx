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

      <div className="header__links">
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

      <div className="header__links">
        <Link to="/">Model S</Link>
        <Link to="/">Model 3</Link>
        <Link to="/">Model X</Link>
        <Link to="/">Model Y</Link>
        <Link to="/">Solar Roof</Link>
        <Link to="/">Solar Panels</Link>
      </div>

      <div className="header__right">
        <Link to="/" className={isMenuOpen && "header__link--hidden"}>
          Shop
        </Link>
        <Link to="/login" className={isMenuOpen && "header__link--hidden"}>
          Volta Account
        </Link>
        <p>
          <i className="fas fa-bars"></i>
        </p>
      </div>
    </div>
  );
};

export default Header;
