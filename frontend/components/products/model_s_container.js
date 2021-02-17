import { connect } from "react-redux";
import { requestProduct } from "../../actions/product_actions";
import ModelS from "./model_s";

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

export default connect(mapStateToProps, mapDispatchToProps)(ModelS);