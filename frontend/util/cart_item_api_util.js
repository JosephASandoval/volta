export const fetchCartitems = () => {
  return $.ajax({
    method: "GET",
    url: `/api/cart_items`,
  });
};

export const createCartitem = (cart_item) =>
  $.ajax({
    method: "POST",
    url: `/api/cart_items`,
    data: { cart_item },
  });

export const updateCartitem = (id, cart_item, increase) => {
  return $.ajax({
    method: "PATCH",
    url: `/api/cart_items/${id}`,
    data: { cart_item, increase },
  });
};

export const removeCartitem = (id) => {
  return $.ajax({
    method: "DELETE",
    url: `/api/cart_items/${id}`,
  });
};
