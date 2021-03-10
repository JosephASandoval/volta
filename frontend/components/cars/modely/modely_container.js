import { connect } from "react-redux";
import { requestAllProducts } from "../../../actions/product_actions";
import ModelyParent from "./modely_parent";

const mapStateToProps = (state) => {
  return {
    products: Object.values(state.entities.products),
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestAllProducts: () => dispatch(requestAllProducts()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(ModelyParent);
