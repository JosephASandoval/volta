import React from "react";

function CarHeader() {
  return (
    <div className="">
      <div>
        <p>
          $1,500 Clean Fuel Reward is now available for California residents.
        </p>
      </div>

      <h1>Model S</h1>
      <p>Estimated Delivery: 5-11 weeks</p>

      <h1>Paint</h1>
      <img src={window.paintWhiteURL} alt="Paint White" />
      <img src={window.paintBlackURL} alt="Paint Black" />
      <img src={window.paintMidnightSilverURL} alt="Paint MidnightSilver" />
      <img src={window.paintBlueURL} alt="Paint Blue" />
      <img src={window.paintRedURL} alt="Paint Red" />

      <h1>Wheels</h1>
      <img src={window.tempestURL} alt='19" Tempest' />
      <img src={window.arachnidURL} alt='21" Arachnid' />

      <h1>Interior</h1>
      <img src={window.interiorBlackURL} alt="Interior Black" />
      <img src={window.interiorWhiteURL} alt="Interior White" />
      <img src={window.interiorCreamURL} alt="Interior Cream" />

      <h1>Full Self-Driving Capability</h1>
      <p>$10,000</p>
      <ul>
        <li>Navigate on Autopilot</li>
        <li>Auto Lane Change</li>
        <li>Autopark</li>
        <li>Summon</li>
        <li>Full Self-Driving Computer</li>
        <li>Traffic Light and Stop Sign Control Coming later this year</li>
        <li>Autosteer on city streets</li>
      </ul>
      <p>
        The currently enabled features require active driver supervision and do
        not make the vehicle autonomous. The activation and use of these
        features are dependent on achieving reliability far in excess of human
        drivers as demonstrated by billions of miles of experience, as well as
        regulatory approval, which may take longer in some jurisdictions. As
        these self-driving features evolve, your car will be continuously
        upgraded through over-the-air software updates.
      </p>
      <div className="item__actions">
        <button className="item__buttonPrimary">Add</button>
        <button className="item__buttonSecondary">Feature Details</button>
      </div>

      <h1>Order Your Model S</h1>
      <p>Estimated Delivery: 5-11 weeks</p>
      <div className="item__actions">
        <button className="item__buttonPrimary">Continue to Payment</button>
      </div>
    </div>
  );
}

export default CarHeader;
