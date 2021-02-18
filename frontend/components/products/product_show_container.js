import { connect } from "react-redux";
import { requestProduct } from "../../actions/product_actions";
import ProductShow from "./product_show";

const mapStateToProps = (state, ownProps) => {
  return {
    product: state.entities.products[ownProps.match.params.productId],
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestProduct: (productId) => dispatch(requestProduct(productId)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(ProductShow);