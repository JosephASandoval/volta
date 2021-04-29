import {
  RECEIVE_ALL_PRODUCTS,
  RECEIVE_PRODUCT,
} from "../actions/product_actions";

import { RECEIVE_REVIEW, DELETE_REVIEW } from "../actions/review_actions";

const productsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  let nextState = Object.assign({}, oldState);

  switch (action.type) {
    case RECEIVE_ALL_PRODUCTS:
      nextState = action.products;
      return nextState;
    case RECEIVE_PRODUCT:
      nextState.product = action.product;
      return nextState;
    case RECEIVE_REVIEW:
      const { review, avgRating } = action;
      nextState[review.productId].reviewIds.push(review.id);
      nextState[review.productId].avgRating = avgRating;
      return nextState;
    case DELETE_REVIEW:
      const idx = nextState[action.review.productId].reviewIds.indexOf(
        action.review.id
      );
      if (idx !== -1) {
        nextState[action.review.productId].reviewIds.splice(idx, 1);
        nextState[action.review.productId].avgRating =
          action.review.avgRating;
      }
      return nextState;
    default:
      return oldState;
  }
};

export default productsReducer;
