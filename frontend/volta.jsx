import React from "react";
import ReactDOM from "react-dom";
import Root from "./components/root";
import configureStore from "./store/store";

// testing
import { fetchProduct, fetchAllProducts } from "./util/product_api_util";
// testing

document.addEventListener("DOMContentLoaded", () => {
  let store;
  if (window.currentUser) {
    const preloadedState = {
      entities: {
        users: { [window.currentUser.id]: window.currentUser },
        cartItems: window.cartItems,
      },
      session: { id: window.currentUser.id },
    };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }

  const rootEl = document.getElementById("root");
  ReactDOM.render(<Root store={store} />, rootEl);

  // testing
  window.fetchProduct = fetchProduct;
  window.fetchAllProducts = fetchAllProducts;
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  // testing
});
