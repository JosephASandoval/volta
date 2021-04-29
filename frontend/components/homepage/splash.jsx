import React, { useState } from "react";
import HeaderContainer from "./header_container";
import Item from "./item";
import Menu from "./menu";

function Splash() {
  const [isMenuOpen, setIsMenuOpen] = useState(false);

  return (
    <div className="scroll-snap">
      <HeaderContainer isMenuOpen={isMenuOpen} setIsMenuOpen={setIsMenuOpen} />
      {isMenuOpen && <Menu />}

      <div className={isMenuOpen ? "background-dim" : ""}>
        <div>
          <Item
            title="Model S"
            desc="Order Online for"
            backgroundImg={window.modelSURL}
            leftBtnTxt="Custom Order"
            leftBtnLink="/models"
            rightBtnTxt="See Reviews"
            rightBtnLink="/models/reviews"
            first
          />
          <Item
            title="Model Y"
            desc="Order Online for"
            backgroundImg={window.modelYURL}
            leftBtnTxt="Custom Order"
            leftBtnLink="/modely"
            rightBtnTxt="See Reviews"
            rightBtnLink="/modely/reviews"
          />
          <Item
            title="Model 3"
            desc="Order Online for"
            backgroundImg={window.model3URL}
            leftBtnTxt="Custom Order"
            leftBtnLink="/model3"
            rightBtnTxt="See Reviews"
            rightBtnLink="/model3/reviews"
          />
          <Item
            title="Model X"
            desc="Order Online for"
            backgroundImg={window.modelXURL}
            leftBtnTxt="Custom Order"
            leftBtnLink="/modelx"
            rightBtnTxt="See Reviews"
            rightBtnLink="/modelx/reviews"
          />
        </div>
      </div>
    </div>
  );
}

export default Splash;
