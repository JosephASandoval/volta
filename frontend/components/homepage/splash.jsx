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
      <div>
        <Item
          title="Model S"
          desc="Order Online for"
          descLink=""
          backgroundImg={window.modelSURL}
          alt="Model S"
          leftBtnTxt="Custom Order"
          leftBtnLink=""
          rightBtnTxt="Existing Inventory"
          rightBtnLink=""
          first
          car
        />
        <Item
          title="Model Y"
          desc="Order Online for"
          descLink=""
          backgroundImg={window.modelYURL}
          alt="Model Y"
          leftBtnTxt="Custom Order"
          leftBtnLink=""
          rightBtnTxt="Learn More"
          rightBtnLink=""
          car
        />
        <Item
          title="Model 3"
          desc="Order Online for"
          descLink=""
          backgroundImg={window.model3URL}
          alt="Model 3"
          leftBtnTxt="Custom Order"
          leftBtnLink=""
          rightBtnTxt="Existing Inventory"
          rightBtnLink=""
          car
        />
        <Item
          title="Model X"
          desc="Order Online for"
          descLink=""
          backgroundImg={window.modelXURL}
          alt="Model X"
          leftBtnTxt="Custom Order"
          leftBtnLink=""
          rightBtnTxt="Existing Inventory"
          rightBtnLink=""
          car
        />
        <Item
          title="Lowest Cost Solar Panels in America"
          desc="Money-back guarantee"
          descLink=""
          backgroundImg={window.solarPanelsURL}
          alt="Solar Panels"
          leftBtnTxt="Order Now"
          leftBtnLink=""
          rightBtnTxt="Learn More"
          rightBtnLink=""
        />
        <Item
          title="Solar for New Roofs"
          desc="Solar Roof Cost Less Than a New Roof Plus Solar Panels"
          descLink=""
          backgroundImg={window.solarRoofURL}
          alt="Solar Roof"
          leftBtnTxt="Custom Order"
          leftBtnLink=""
          rightBtnTxt="Learn More"
          rightBtnLink=""
        />
        <Item
          title="Accessories"
          desc=""
          descLink=""
          backgroundImg={window.accessoriesURL}
          alt="Accessories"
          leftBtnTxt="Shop Now"
          leftBtnLink=""
          oneButton
        />
      </div>
    </div>
  );
}

export default Splash;
