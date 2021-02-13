import React from "react";
import { Link } from "react-router-dom";

const VoltaLogo = () => {
  return (
    <div className="header">
      <div className="volta_logo">
        <Link to="/">
          <img src={window.voltaLogoURL} alt="Volta Logo" />
        </Link>
      </div>
    </div>
  );
};

export default VoltaLogo;
