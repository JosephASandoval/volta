import * as APIUtil from "../util/cart_item_api_util";

export const RECEIVE_ITEMS = "RECEIVE_ITEMS";
export const REMOVE_ITEM = "REMOVE_ITEM";

export const receiveCartItems = (items) => {
  return {
    type: RECEIVE_ITEMS,
    items,
  };
};
export const removeCartItem = (itemId) => {
  return {
    type: REMOVE_ITEM,
    itemId,
  };
};

// Thunk action creators:

export const fetchCartItems = () => (dispatch) => {
  return APIUtil.fetchCartitems().then((items) =>
    dispatch(receiveCartItems(items))
  );
};

export const addCartItem = (cart_item) => (dispatch) => {
  return APIUtil.createCartitem(cart_item).then((items) =>
    dispatch(receiveCartItems(items))
  );
};

export const deleteCartItem = (id) => (dispatch) => {
  return APIUtil.removeCartitem(id).then(() => dispatch(removeCartItem(id)));
};

export const updateCartItem = (id, cart_item, increase) => (dispatch) => {
  return APIUtil.updateCartitem(id, cart_item, increase).then((items) =>
    dispatch(receiveCartItems(items))
  );
};
