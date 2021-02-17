import * as PRODUCT_API_UTIL from "../util/product_api_util";

export const RECEIVE_PRODUCT = "RECEIVE_PRODUCT";
export const RECEIVE_ALL_PRODUCTS = "RECEIVE_ALL_PRODUCTS";


export const receiveProduct = (product) => {
  return {
    type: RECEIVE_PRODUCT,
    product,
  };
};

export const receiveAllProducts = (products) => {
  return {
    type: RECEIVE_ALL_PRODUCTS,
    products,
  };
};

// Thunk action creators:

export const requestProduct = (productId) => (dispatch) => {
  return PRODUCT_API_UTIL.fetchProduct(productId).then((product) => {
    dispatch(receiveProduct(product));
  });
};

export const requestAllProducts = () => (dispatch) => {
  return PRODUCT_API_UTIL.fetchAllProducts().then((products) => {
    dispatch(receiveAllProducts(products));
  });
};

export const createProduct = (product) => (dispatch) => {
  return PRODUCT_API_UTIL.createProduct(product).then((product) =>
    dispatch(receiveProduct(product))
  );
};
