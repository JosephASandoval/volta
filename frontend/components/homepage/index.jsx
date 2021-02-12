import React from "react";
import HeaderContainer from "./header_container";
import Item from "./item";

function Index() {
  return (
    <div className="app_itemsContainer">
      <HeaderContainer />
      <div>
        <Item
          title="Model S"
          desc="Order Online for Touchless Delivery"
          descLink=""
          backgroundImg={window.modelSURL}
          alt="Model S"
          leftBtnTxt="CUSTOM ORDER"
          leftBtnLink=""
          rightBtnTxt="EXISTING INVENTORY"
          rightBtnLink=""
          twoButtons="true"
          first
        />
        <Item
          title="Model Y"
          desc="Order Online for Touchless Delivery"
          descLink=""
          backgroundImg={window.modelYURL}
          alt="Model Y"
          leftBtnTxt="CUSTOM ORDER"
          leftBtnLink=""
          rightBtnTxt="LEARN MORE"
          rightBtnLink=""
          twoButtons="true"
        />
        <Item
          title="Model 3"
          desc="Order Online for Touchless Delivery"
          descLink=""
          backgroundImg={window.model3URL}
          alt="Model 3"
          leftBtnTxt="CUSTOM ORDER"
          leftBtnLink=""
          rightBtnTxt="EXISTING INVENTORY"
          rightBtnLink=""
          twoButtons="true"
        />
        <Item
          title="Model X"
          desc="Order Online for Touchless Delivery"
          descLink=""
          backgroundImg={window.modelXURL}
          alt="Model X"
          leftBtnTxt="CUSTOM ORDER"
          leftBtnLink=""
          rightBtnTxt="EXISTING INVENTORY"
          rightBtnLink=""
          twoButtons="true"
        />
        <Item
          title="Lowest Cost Solar Panels in America"
          desc="Money-back guarantee"
          descLink=""
          backgroundImg={window.solarPanelsURL}
          alt="Solar Panels"
          leftBtnTxt="ORDER NOW"
          leftBtnLink=""
          rightBtnTxt="LEARN MORE"
          rightBtnLink=""
          twoButtons="true"
        />
        <Item
          title="Solar for New Roofs"
          desc="Solar Roof Cost Less Than a New Roof Plus Solar Panels"
          descLink=""
          backgroundImg={window.solarRoofURL}
          alt="Solar Roof"
          leftBtnTxt="CUSTOM ORDER"
          leftBtnLink=""
          rightBtnTxt="LEARN MORE"
          rightBtnLink=""
          twoButtons="true"
        />
        <Item
          title="Accessories"
          desc=""
          descLink=""
          backgroundImg={window.accessoriesURL}
          alt="Accessories"
          leftBtnTxt="SHOP NOW"
          leftBtnLink=""
          twoButtons="false"
        />
      </div>
    </div>
  );
}

export default Index;
