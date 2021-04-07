import React from "react";
import { Link } from "react-router-dom";
import DarkMenu from "../../homepage/dark_menu";
import MenuIcon from "@material-ui/icons/Menu";
import CloseIcon from "@material-ui/icons/Close";

const ModelsHeader = ({
  currentUser,
  logout,
  cartItemsLen,
  isMenuOpen,
  setIsMenuOpen,
}) => {
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
          <Link to="/cart" className={isMenuOpen ? "header__link--hidden" : ""}>
            <div className="shopping-cart-icon-container">
              <span className={clsName}>{cartItemsNum}</span>
              <img
                src={window.shoppingCartInverseURL}
                alt=""
                className="shopping-cart-icon"
              />
            </div>
          </Link>
          {currentUser ? (
            <Link to="/" onClick={logout}>
              Log out
            </Link>
          ) : (
            <Link to="/">Log out</Link>
          )}
          <div className="notFound__menu" onClick={() => setIsMenuOpen()}>
            {isMenuOpen ? (
              <CloseIcon className="notFound__closeMenu" />
            ) : (
              <MenuIcon />
            )}
          </div>
        </div>
      </div>
      {isMenuOpen && <DarkMenu />}
    </div>
  );
};

export default ModelsHeader;
