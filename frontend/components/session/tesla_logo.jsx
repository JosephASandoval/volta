import React from "react";
import { Link } from "react-router-dom";

const TeslaLogo = () => {
  return (
    <div className="header">
      <div className="tesla_logo">
        <Link to="/">
          <img src={window.voltaLogoURL} alt="Tesla Logo" />
        </Link>
      </div>
    </div>
  );
};

export default TeslaLogo;
