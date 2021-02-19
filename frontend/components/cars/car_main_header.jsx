import React from "react";
import { Link } from "react-router-dom";
import LanguageOutlinedIcon from "@material-ui/icons/LanguageOutlined";


function CarMainHeader() {
  return (
    <div className="carMainHeader">
      <div className="carMainHeader__header">
        <div className="carMainHeader__logo">
          <Link to="/">
            <img src={window.voltaLogoURL} alt="Volta Logo" />
          </Link>
        </div>
        <div className="carMainHeader__language">
          <LanguageOutlinedIcon /> <span>US</span>
        </div>
      </div>
    </div>
  );
}

export default CarMainHeader;
