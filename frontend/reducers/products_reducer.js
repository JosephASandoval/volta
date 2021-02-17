import {
  RECEIVE_PRODUCT,
  RECEIVE_ALL_PRODUCTS,
} from "../actions/product_actions";

const productsReducer = (oldState = {}, action) => {

  Object.freeze(oldState);
  const nextState = Object.assign({}, oldState);

  switch (action.type) {
    case RECEIVE_PRODUCT:
      nextState[action.product.id] = action.product;
      return nextState;
    case RECEIVE_ALL_PRODUCTS:
      return Object.assign(nextState, action.products);
    default:
      return oldState;
  }
};

export default productsReducer;
