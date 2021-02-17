export const fetchAllProducts = () => {
  return $.ajax({
    method: "GET",
    url: "/api/products",
  });
};

export const fetchProduct = (productId) => {
  return $.ajax({
    method: `GET`,
    url: `/api/products/${productId}`,
  });
};
