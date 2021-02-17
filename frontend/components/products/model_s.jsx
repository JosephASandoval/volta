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
        <p>{product.interiorColor}</p>
        <p>{product.interiorName}</p>
        <p>{product.wheelType}</p>
        <p>{product.selfDriving}</p>
        <p>{product.view}</p>
        <a href={product.imageLink}>Image</a>
        <br/>
        <br/>
        <Link to={`/products`}>Back to all Products</Link>
      </div>
    );
  }
}

export default ModelS;
