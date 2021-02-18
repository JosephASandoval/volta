import React from "react";
import { Link } from "react-router-dom";

class ProductButton extends React.Component {
  constructor(props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  // componentDidMount() {
  //   this.props.requestAllProducts();
  // }

  handleSubmit(e) {
    e.preventDefault();
    this.props.updateId();
    
  }

  render() {
    const { products } = this.props;
    return (
      <div>
        <div>
          <Link to="/">
            <img src={window.voltaLogoURL} alt="Volta Logo" />
          </Link>
        </div>
        <button
          className="buttonPrimary"
          type="submit"
          onClick={this.handleSubmit}
        >
          Submit
        </button>
      </div>
    );
  }
}

export default ProductButton;
