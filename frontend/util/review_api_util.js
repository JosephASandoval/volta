export const createReview = (review) => {
  return $.ajax({
    method: "POST",
    url: "/api/reviews",
    data: { review },
  });
};

export const deleteReview = (reviewId) => {
  return $.ajax({
    method: "DELETE",
    url: `/api/reviews/${reviewId}`,
  });
};

export const fetchReviews = () => {
  return $.ajax({
    method: "GET",
    url: `api/reviews`,
  });
};

export const fetchReview = (reviewId) => {
  return $.ajax({
    method: "GET",
    url: `api/reviews/${reviewId}`,
  });
};
