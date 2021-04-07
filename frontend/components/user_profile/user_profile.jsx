import React, { useState } from "react";
import { Link } from "react-router-dom";
import DarkMenu from "../homepage/dark_menu";
import MenuIcon from "@material-ui/icons/Menu";
import CloseIcon from "@material-ui/icons/Close";
import NoCar from "./no_car";

const UserProfile = ({ currentUser, logout, cartItemsLen }) => {
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
    <div className="userProfile">
      <div className="userProfile__header">
        <div className="userProfile__logo">
          <Link to="/">
            <img src={window.voltaLogoURL} alt="Volta Logo" />
          </Link>
        </div>
        <div className="userProfile__links">
          <Link to="/models">Model S</Link>
          <Link to="/model3">Model 3</Link>
          <Link to="/modelx">Model X</Link>
          <Link to="/modely">Model Y</Link>
        </div>

        <div className="userProfile__right">
          <Link to="/">Shop</Link>
          <Link to="/userProfile">Volta Account</Link>
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
          <Link to="/" onClick={logout}>
            Log out
          </Link>
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
      {isMenuOpen && <DarkMenu />}

      <div className={isMenuOpen ? "background-dim" : ""}>
        <div className="userProfile__info">
          <div className="userProfile__person">
            <h4>{currentUser.firstName + "'s"} Volta</h4>
          </div>
          <div className="userProfile__infoRight">
            <Link to="/">Home</Link>
            <Link to="/userProfile">Account</Link>
            <Link to="/">History</Link>
            <Link to="/" onClick={logout}>
              Sign Out
            </Link>
          </div>
        </div>
        <div className="userProfile__car">
          <NoCar
            imgSrc={window.nocarSURL}
            model="Model S"
            testDrive
            buyPreOwned
            car
          />
          <NoCar imgSrc={window.nocarXURL} model="Model X" car />
          <NoCar
            imgSrc={window.powerwallBatteryURL}
            model="Powerwall"
            powerwall
          />
        </div>
      </div>
    </div>
  );
};

export default UserProfile;
