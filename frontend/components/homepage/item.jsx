import React from "react";
import Button from "./button";

const Item = ({
  title,
  desc,
  descLink,
  backgroundImg,
  alt,
  leftBtnTxt,
  leftBtnLink,
  rightBtnTxt,
  rightBtnLink,
  first,
  car,
  oneButton,
}) => {
  return car ? (
    <div className="item" style={{ backgroundImage: `url(${backgroundImg})` }}>
      <div className="item__info">
        <div className="item__infoText">
          <h1>{title}</h1>
          <h4>
            {desc} <span>Touchless Delivery</span>
          </h4>
        </div>
        <div className="item__actions">
          <button className="item__buttonPrimary">{leftBtnTxt}</button>
          <button className="item__buttonSecondary">{rightBtnTxt}</button>
        </div>
        {first && (
          <div className="item__downArrow">
            <img src={window.downArrowURL} alt="Down Arrow" />
          </div>
        )}
      </div>
    </div>
  ) : (
    <div className="item" style={{ backgroundImage: `url(${backgroundImg})` }}>
      <div className="item__info">
        <div className="item__infoText">
          <h1>{title}</h1>
          <h4>{desc}</h4>
        </div>
        {!oneButton ? (
          <div className="item__actions">
            <button className="item__buttonPrimary">{leftBtnTxt}</button>
            <button className="item__buttonSecondary">{rightBtnTxt}</button>
          </div>
        ) : (
          <div className="item__actions">
            <button className="item__oneButton">{leftBtnTxt}</button>
          </div>
        )}
      </div>
    </div>
  );
};

export default Item;
