// import { connect } from "react-redux";
// import ProductIndex from "./product_index";

// import { receiveAllProducts, createProduct } from "../actions/product_actions";

// const mapStateToProps = (state) => {
//   const selectProductsByName = (products, name) => {
//     const productsArr = Object.values(products);
//     return productsArr.filter((product) => product.name === name);
//   };

//   return {
//     products: Object.values(state.products),
//     modelS: selectProductsByName(state.products, "Model S"),
//   };
// };

// const mapDispatchToProps = (dispatch) => {
//   return {
//     receiveAllProducts: () => dispatch(receiveAllProducts()),
//     createProduct: (product) => dispatch(createProduct(product)),
//   };
// };

// export default connect(mapStateToProps, mapDispatchToProps)(ProductIndex);
