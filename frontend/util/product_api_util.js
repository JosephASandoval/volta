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

export const createProduct = (product) => {
  return $.ajax({
    method: "POST",
    url: "/api/products",
    data: { product },
  });
};
