export const selectProduct = (products, productId) => {
  return products[productId] || { reviewIds: [] };
};

export const selectReviewsForProduct = ({ reviews }, product) => {
  return product.reviewIds.map((reviewId) => reviews[reviewId]);
};


