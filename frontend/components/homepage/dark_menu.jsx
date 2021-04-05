import React from "react";
import DarkMenuItem from "./dark_menu_item";

function DarkMenu() {
  return (
    <div className="dark-menu">
      <DarkMenuItem title="existing inventory" />
      <DarkMenuItem title="used inventory" />
      <DarkMenuItem title="trade-in" />
      <DarkMenuItem title="cybertruck" />
      <DarkMenuItem title="roadster" />
      <DarkMenuItem title="semi" />
      <DarkMenuItem title="charging" />
      <DarkMenuItem title="powerwall" />
      <DarkMenuItem title="commercial solar" />
      <DarkMenuItem title="test drive" />
      <DarkMenuItem title="find us" />
      <DarkMenuItem title="support" />
      <DarkMenuItem title="united states" />
    </div>
  );
}

export default DarkMenu;
