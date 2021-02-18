import React from "react";
import { Link } from "react-router-dom";

class ProductButton extends React.Component {
  constructor(props) {
    super(props);

    this.handleId = this.handleId.bind(this);
    // this.handelExterior = this.handleExterior.bind(this);
  }

  handleId(e) {
    e.preventDefault();
    this.props.updateId();
  }

  // handleExterior(e) {
  //   e.preventDefault();
  //   // this.setState({ exterior: e.currentTarget.value });
  //   this.props.updateExterior();
  // }

  render() {
    return (
      <div>
        <div>
          <Link to="/">
            <img src={window.voltaLogoURL} alt="Volta Logo" />
          </Link>
        </div>

        {/* update exterior */}
        {/* <button
          className="buttonDemo"
          type="submit"
          value="Red Multi-Coat"
          onClick={this.handleExterior}
        >
          Change exterior to Red
        </button>

        <button
          className="buttonPrimary"
          type="submit"
          value="Deep Blue Metallic"
          onClick={this.handleExterior}
        >
          Change exterior to blue
        </button> */}

        {/* Update Id */}
        <button
          className="buttonSecondary"
          type="submit"
          onClick={this.handleId}
        >
          Increment Id
        </button>
      </div>
    );
  }
}

export default ProductButton;
