import React, { useEffect } from "react";
import { Link } from "react-router-dom";
import MenuIcon from "@material-ui/icons/Menu";
import CloseIcon from "@material-ui/icons/Close";

const Header = ({
  products,
  requestAllProducts,
  fetchReviews,
  currentUser,
  isMenuOpen,
  setIsMenuOpen,
  cartItemsLen,
}) => {
  useEffect(() => {
    if (products.length === 0) {
      requestAllProducts();
    }
    fetchReviews();
  }, []);

  let cartItemsNum;
  let clsName;

  if (!cartItemsLen) {
    cartItemsNum = "";
    clsName = "hiding-notification";
  } else {
    cartItemsNum = cartItemsLen;
    clsName = "notification";
  }

  return (
    <div className="header">
      <div className="header__logo">
        <Link to="/">
          <img src={window.voltaLogoURL} alt="Volta Logo" />
        </Link>
      </div>

      <div className="header__links">
        <Link to="/models">Model S</Link>
        <Link to="/model3">Model 3</Link>
        <Link to="/modelx">Model X</Link>
        <Link to="/modely">Model Y</Link>
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

        {currentUser ? (
          <Link to="/cart" className={isMenuOpen ? "header__link--hidden" : ""}>
            <div className="shopping-cart-icon-container">
              <span className={clsName}>{cartItemsNum}</span>
              <img
                src={window.shoppingCartURL}
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
                src={window.shoppingCartURL}
                alt=""
                className="shopping-cart-icon"
              />
            </div>
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
