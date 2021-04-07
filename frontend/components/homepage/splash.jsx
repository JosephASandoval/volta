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
            rightBtnTxt="Existing Inventory"
            rightBtnLink="/models"
            first
          />
          <Item
            title="Model Y"
            desc="Order Online for"
            backgroundImg={window.modelYURL}
            leftBtnTxt="Custom Order"
            leftBtnLink="/modely"
            rightBtnTxt="Learn More"
            rightBtnLink="/modely"
          />
          <Item
            title="Model 3"
            desc="Order Online for"
            backgroundImg={window.model3URL}
            leftBtnTxt="Custom Order"
            leftBtnLink="/model3"
            rightBtnTxt="Existing Inventory"
            rightBtnLink="/model3"
          />
          <Item
            title="Model X"
            desc="Order Online for"
            backgroundImg={window.modelXURL}
            leftBtnTxt="Custom Order"
            leftBtnLink="/modelx"
            rightBtnTxt="Existing Inventory"
            rightBtnLink="/modelx"
          />
        </div>
      </div>
    </div>
  );
}

export default Splash;
