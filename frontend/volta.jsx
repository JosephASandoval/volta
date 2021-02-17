import React from "react";
import ReactDOM from "react-dom";
import Root from "./components/root";
import configureStore from "./store/store";

// testing
import {
  createProduct,
  fetchProduct,
  fetchAllProducts,
} from "./util/product_api_util";
// testing

document.addEventListener("DOMContentLoaded", () => {
  const rootEl = document.getElementById("root");

  let store;
  if (window.currentUser) {
    const preloadedState = {
      entities: {
        users: { [window.currentUser.id]: window.currentUser },
      },
      session: { id: window.currentUser.id },
    };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }

  ReactDOM.render(<Root store={store} />, rootEl);

  // testing
  window.createProduct = createProduct;
  window.fetchProduct = fetchProduct;
  window.fetchAllProducts = fetchAllProducts;
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  // testing
});
