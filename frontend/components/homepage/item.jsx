import React from "react";
import { Link } from "react-router-dom";

const Item = ({
  title,
  desc,
  backgroundImg,
  leftBtnTxt,
  leftBtnLink,
  rightBtnTxt,
  rightBtnLink,
  first,
}) => {
  return (
    <div className="item" style={{ backgroundImage: `url(${backgroundImg})` }}>
      <div className="item__info">
        <div className="item__infoText">
          <h1>{title}</h1>
          <h4>
            {desc} <Link to={leftBtnLink}>Touchless Delivery</Link>
          </h4>
        </div>
        <div className="item__actions">
          <Link to={leftBtnLink} className="item__buttonPrimary">
            {leftBtnTxt}
          </Link>
          <Link to={rightBtnLink} className="item__buttonSecondary">
            {rightBtnTxt}
          </Link>
        </div>
        {first && (
          <div className="item__downArrow">
            <div className="box bounce">
              <img src={window.downArrowURL} alt="Down Arrow" />
            </div>
          </div>
        )}
      </div>
    </div>
  );
};

export default Item;
