import * as APIUtil from "../util/review_api_util";

export const RECEIVE_REVIEW = "RECEIVE_REVIEW";
export const RECEIVE_REVIEWS = "RECEIVE_REVIEWS";
export const DELETE_REVIEW = "DELETE_REVIEW";
export const RECEIVE_REVIEW_ERRORS = "RECEIVE_REVIEW_ERRORS";

const receiveReviews = (reviews) => ({
  type: RECEIVE_REVIEWS,
  reviews,
});

const receiveReview = ({ review, author, avgRating }) => ({
  type: RECEIVE_REVIEW,
  review,
  author,
  avgRating,
});

const removeReview = ({ review }) => {
  return {
    type: DELETE_REVIEW,
    review,
  };
};

const receiveErrors = (errors) => ({
  type: RECEIVE_REVIEW_ERRORS,
  errors,
});

// Thunk action creators

export const fetchReviews = () => (dispatch) => {
  return APIUtil.fetchReviews().then((reviews) =>
    dispatch(receiveReviews(reviews))
  );
};

export const fetchReview = (reviewId) => (dispatch) => {
  return APIUtil.fetchReview(reviewId).then((review) =>
    dispatch(receiveReview(review))
  );
};

export const createReview = (review) => (dispatch) => {
  return APIUtil.createReview(review).then(
    (review) => dispatch(receiveReview(review)),
    (err) => dispatch(receiveErrors(err.responseJSON))
  );
};

export const deleteReview = (reviewId) => (dispatch) => {
  return APIUtil.deleteReview(reviewId).then((review) =>
    dispatch(removeReview(review))
  );
};