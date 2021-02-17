import React from "react";
import { Link } from "react-router-dom";

class ProductIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const { product } = this.props;

    return (
      <div>
        <li>
          <Link to={`/products/${product.id}`}>{product.name}</Link>
        </li>
      </div>
    );
  }
}

export default ProductIndexItem;
