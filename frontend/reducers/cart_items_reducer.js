import { RECEIVE_ITEMS, REMOVE_ITEM } from "../actions/cart_item_actions";
import { LOGOUT_CURRENT_USER } from "../actions/session_actions";

const cartItemsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  let nextState = Object.assign({}, oldState);

  switch (action.type) {
    case RECEIVE_ITEMS:
      return action.items;
    case REMOVE_ITEM:
      delete nextState[action.itemId];
      return nextState;
    case LOGOUT_CURRENT_USER:
      return {};
    default:
      return oldState;
  }
};
export default cartItemsReducer;
