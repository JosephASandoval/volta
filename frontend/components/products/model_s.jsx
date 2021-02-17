import React from "react";
import { Link } from "react-router-dom";

class ModelS extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestProduct(this.props.product.id);
  }

  render() {
    const { product } = this.props;

    return (
      <div>
        <h1>{product.name}</h1>
        <p>{product.price}</p>
        <p>{product.exterior}</p>
        <p>{product.interior_color}</p>
        <p>{product.interior_name}</p>
        <p>{product.wheel_type}</p>
        <p>{product.self_driving}</p>
        <p>{product.view}</p>
        <p>{product.image_link}</p>
        <Link to={`/products`}>Back to all Products</Link>
      </div>
    );
  }
}

export default ModelS;
