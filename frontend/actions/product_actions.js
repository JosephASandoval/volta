import * as PRODUCT_API_UTIL from "../util/product_api_util";

export const RECEIVE_ALL_PRODUCTS = "RECEIVE_ALL_PRODUCTS";
export const RECEIVE_PRODUCT = "RECEIVE_PRODUCT";

export const receiveAllProducts = (products) => {
  return {
    type: RECEIVE_ALL_PRODUCTS,
    products,
  };
};

export const receiveProduct = ({ product, reviews, authors }) => {
  return {
    type: RECEIVE_PRODUCT,
    product,
    reviews,
    authors,
  };
};

// Thunk action creators:

export const requestAllProducts = () => (dispatch) => {
  return PRODUCT_API_UTIL.fetchAllProducts().then((products) => {
    dispatch(receiveAllProducts(products));
  });
};

export const requestProduct = (productId) => (dispatch) => {
  return PRODUCT_API_UTIL.fetchProduct(productId).then((product) => {
    dispatch(receiveProduct(product));
  });
};
