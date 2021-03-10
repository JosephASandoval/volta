import { connect } from "react-redux";
import { requestAllProducts } from "../../../actions/product_actions";
import Model3Parent from "./model3_parent";

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

export default connect(mapStateToProps, mapDispatchToProps)(Model3Parent);
