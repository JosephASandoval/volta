import React from "react";
import ClipLoader from "react-spinners/ClipLoader";

const FullPageLoader = () => {
  return (
    <div className="fp-container">
      <ClipLoader size={150} />
    </div>
  );
};

export default FullPageLoader;
