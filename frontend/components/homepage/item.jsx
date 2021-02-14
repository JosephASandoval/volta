import React from "react";
import Button from "./button";

const Item = ({
  title,
  desc,
  backgroundImg,
  leftBtnTxt,
  leftBtnLink,
  rightBtnTxt,
  rightBtnLink,
  twoButtons,
  first,
}) => {
  return (
    <div className="item" style={{ backgroundImage: `url(${backgroundImg})` }}>
      <div className="item__info">
        <div className="item__infoText">
          <h1>{title}</h1>
          <h4>
            {desc} <span>Touchless Delivery</span>
          </h4>
        </div>
        <div className="item__actions">
          <button className="item__buttonPrimary">custom order</button>
          <button className="item__buttonSecondary">existing inventory</button>
        </div>
      </div>
    </div>
  );
};

export default Item;
