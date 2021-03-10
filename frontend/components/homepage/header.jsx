import React from "react";
import { Link } from "react-router-dom";
import MenuIcon from "@material-ui/icons/Menu";
import CloseIcon from "@material-ui/icons/Close";

const Header = ({ currentUser, isMenuOpen, setIsMenuOpen }) => {
  return (
    <div className="header">
      <div className="header__logo">
        <Link to="/">
          <img src={window.voltaLogoURL} alt="Volta Logo" />
        </Link>
      </div>

      <div className="header__links">
        <Link to="/models">Model S</Link>
        <Link to="/">Model 3</Link>
        <Link to="/">Model X</Link>
        <Link to="/">Model Y</Link>
        <Link to="/">Solar Roof</Link>
        <Link to="/">Solar Panels</Link>
      </div>

      <div className="header__right">
        <Link to="/" className={isMenuOpen ? "header__link--hidden" : ""}>
          Shop
        </Link>
        {currentUser ? (
          <Link
            to="/userProfile"
            className={isMenuOpen ? "header__link--hidden" : ""}
          >
            Volta Account
          </Link>
        ) : (
          <Link
            to="/login"
            className={isMenuOpen ? "header__link--hidden" : ""}
          >
            Volta Account
          </Link>
        )}

        <div
          className="header__menu"
          onClick={() => setIsMenuOpen(!isMenuOpen)}
        >
          {isMenuOpen ? <CloseIcon /> : <MenuIcon />}
        </div>
      </div>
    </div>
  );
};

export default Header;
