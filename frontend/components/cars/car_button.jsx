import React from "react";
import { Link } from "react-router-dom";

class ProductButton extends React.Component {
  constructor(props) {
    super(props);

    this.handleId = this.handleId.bind(this);
    this.handleExterior = this.handleExterior.bind(this);
  }

  handleId(e) {
    e.preventDefault();
    this.props.updateId();
  }

  handleExterior(e) {
    e.preventDefault();
    // this.setState({ exterior: e.currentTarget.value });
    this.props.updateExterior(e.currentTarget.value);

    // return (e) => {
    //   this.setState({ [field]: e.currentTarget.value });
    // };
  }

  render() {
    return (
      <div>
        <div>
          <Link to="/">
            <img src={window.voltaLogoURL} alt="Volta Logo" />
          </Link>
        </div>

        {/* update exterior */}
        <button
          className="buttonPrimary"
          type="submit"
          value="Pearl White Multi-Coat"
          onClick={this.handleExterior}
        >
          Pearl White Multi-Coat
        </button>

        <button
          className="buttonPrimary"
          type="submit"
          value="Solid Black"
          onClick={this.handleExterior}
        >
          Solid Black
        </button>

        <button
          className="buttonPrimary"
          type="submit"
          value="Midnight Silver Metallic"
          onClick={this.handleExterior}
        >
          Midnight Silver Metallic
        </button>

        <button
          className="buttonPrimary"
          type="submit"
          value="Deep Blue Metallic"
          onClick={this.handleExterior}
        >
          Deep Blue Metallic
        </button>

        <button
          className="buttonPrimary"
          type="submit"
          value="Red Multi-Coat"
          onClick={this.handleExterior}
        >
          Red Multi-Coat
        </button>

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
