import React, { useState } from "react";
import { Link } from "react-router-dom";
import Menu from "../homepage/menu";
import MenuIcon from "@material-ui/icons/Menu";
import CloseIcon from "@material-ui/icons/Close";
import NoCar from "./no_car";

const UserProfile = ({ currentUser, logout }) => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);

  return (
    <div className="userProfile">
      <div className="userProfile__header">
        <div className="userProfile__logo">
          <Link to="/">
            <img src={window.voltaLogoURL} alt="Volta Logo" />
          </Link>
        </div>
        <div className="userProfile__links">
          <Link to="/">Model S</Link>
          <Link to="/">Model 3</Link>
          <Link to="/">Model X</Link>
          <Link to="/">Model Y</Link>
          <Link to="/">Solar Roof</Link>
          <Link to="/">Solar Panels</Link>
        </div>

        <div className="userProfile__right">
          <Link to="/">Shop</Link>
          <Link to="/">Tesla Account</Link>
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
      {isMenuOpen && <Menu />}
      <div className="userProfile__info">
        <div className="userProfile__person">
          <h4>{currentUser.firstName + "'s"} Volta</h4>
        </div>
        <div className="userProfile__infoRight">
          <Link to="/">Home</Link>
          <Link to="/">Account</Link>
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
  );
};

export default UserProfile;
