import React, { useState } from "react";
import { Link } from "react-router-dom";
import DarkMenu from "../homepage/dark_menu";
import MenuIcon from "@material-ui/icons/Menu";
import CloseIcon from "@material-ui/icons/Close";

const NotFound = ({ currentUser, logout, cartItemsLen }) => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);

  let cartItemsNum;
  let clsName;

  if (!cartItemsLen) {
    cartItemsNum = "";
    clsName = "hiding-notification";
  } else {
    cartItemsNum = cartItemsLen;
    clsName = "notification-inverse";
  }

  return (
    <div className="notFound">
      <div className="notFound__header">
        <div className="notFound__logo">
          <Link to="/">
            <img src={window.voltaLogoURL} alt="Volta Logo" />
          </Link>
        </div>
        <div className="notFound__links">
          <Link to="/models">Model S</Link>
          <Link to="/model3">Model 3</Link>
          <Link to="/modelx">Model X</Link>
          <Link to="/modely">Model Y</Link>
        </div>

        <div className="notFound__right">
          <Link to="/">Shop</Link>
          {currentUser ? (
            <Link to="/userProfile">Volta Account</Link>
          ) : (
            <Link to="/login">Volta Account</Link>
          )}

          {currentUser ? (
            <Link
              to="/cart"
              className={isMenuOpen ? "header__link--hidden" : ""}
            >
              <div className="shopping-cart-icon-container">
                <span className={clsName}>{cartItemsNum}</span>
                <img
                  src={window.shoppingCartInverseURL}
                  alt=""
                  className="shopping-cart-icon"
                />
              </div>
            </Link>
          ) : (
            <Link
              to="/login"
              className={isMenuOpen ? "header__link--hidden" : ""}
            >
              <div className="shopping-cart-icon-container">
                <span className={clsName}>{cartItemsNum}</span>
                <img
                  src={window.shoppingCartInverseURL}
                  alt=""
                  className="shopping-cart-icon"
                />
              </div>
            </Link>
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
      {isMenuOpen && <DarkMenu />}
      <div className={isMenuOpen ? "background-dim" : ""}>
        <div className="notFound__container">
          <div className="notFound__firstMessage">
            <h1>404</h1>
            <div className="notFound__secondMessage">
              <p>I'm afraid I can't do that.</p>
            </div>
            <div className="notFound__thirdMessage">
              <p>
                Join Starman back at the <Link to="/">homepage</Link> or visit
                Support for help.
              </p>
            </div>
          </div>
          <div className="notFound__starman">
            <img src={window.starmanURL} alt="starman" />
          </div>
        </div>
      </div>
    </div>
  );
};

export default NotFound;
