import { RECEIVE_PRODUCT } from "../actions/product_actions";

import { RECEIVE_REVIEW, RECEIVE_REVIEWS } from "../actions/review_actions";

const reviewsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);

  switch (action.type) {
    case RECEIVE_PRODUCT:
      const { reviews } = action;
      return Object.assign({}, oldState, reviews);
    case RECEIVE_REVIEWS:
      return Object.assign({}, oldState, action.reviews);
    case RECEIVE_REVIEW:
      const { review, author } = action;
      return Object.assign({}, oldState, {
        [review.id]: Object.assign(review, {
          author: author.firstName,
        }),
      });
    default:
      return oldState;
  }
};

export default reviewsReducer;
