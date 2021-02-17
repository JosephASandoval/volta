import React from "react";
import ProductIndexItem from "./product_index_item";

class ProductIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestAllProducts();
  }

  render() {
    const { products } = this.props;
    return (
      <div>
        <ul>
          {products.map((product) => (
            <ProductIndexItem
              product={product}
              key={product.id}
            />
          ))}
        </ul>
      </div>
    );
  }
}

export default ProductIndex;