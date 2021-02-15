import React from "react";

function NoCar({ imgSrc, model, testDrive, buyPreOwned, car, powerwall }) {
  return (
    <div className="noCar">
      {car && (
        <div className="noCar__image">
          <img src={imgSrc} alt="" />
        </div>
      )}
      {car && <h2 className="noCar__model">{model}</h2>}

      <div className="noCar__actions">
        {car && (
          <button className="buttonPrimary" type="submit">
            Order
          </button>
        )}
        {buyPreOwned && (
          <button className="buttonGray" type="submit">
            Buy Pre-Owned
          </button>
        )}
        {testDrive && (
          <button className="buttonSecondary" type="submit">
            Test Drive
          </button>
        )}
      </div>

      {car && (
        <p className="noCar__info">
          <span>Request a Call</span> to speak with a product specialist, value
          your trade-in or apply for leasing
        </p>
      )}

      <div className="noCar__powerWall">
        {powerwall && (
          <div className="noCar__powerWallImage">
            <img src={imgSrc} alt="" />
          </div>
        )}
        <div className="noCar__powerWallAction">
          {powerwall && <h2 className="noCar__powerWallModel">{model}</h2>}
          {powerwall && (
            <button className="buttonPrimary" type="submit">
              Order
            </button>
          )}
        </div>
      </div>
    </div>
  );
}

export default NoCar;
