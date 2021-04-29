import React, { useEffect } from "react";
import { Link } from "react-router-dom";
import MenuIcon from "@material-ui/icons/Menu";
import CloseIcon from "@material-ui/icons/Close";
import { connect } from "react-redux";
import { requestAllProducts } from "../../actions/product_actions";
import { fetchReviews } from "../../actions/review_actions";

const HeaderNonStick = ({
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
    <div className="header__parent">
      <div className="header__nonStick">
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
            <Link
              to="/cart"
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
    </div>
  );
};

const mapStateToProps = ({
  session,
  entities: { users, products, reviews, cartItems },
}) => {
  let count = 0;
  Object.values(cartItems).forEach((obj) => {
    count += obj.quantity;
  });

  return {
    currentUser: users[session.id],
    products: Object.values(products),
    cartItemsLen: count,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestAllProducts: () => dispatch(requestAllProducts()),
    fetchReviews: () => dispatch(fetchReviews()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(HeaderNonStick);
