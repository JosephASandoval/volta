import React from "react";
import ReactDOM from "react-dom";
import Root from "./components/root";
import configureStore from "./store/store";

// testing
import { login, signup, logout } from "./util/session_api_util";
// testing

document.addEventListener("DOMContentLoaded", () => {
  const rootEl = document.getElementById("root");
  
  let preloadedState = undefined;
  if (window.currentUser) {
    preloadedState = {
      session: {
        currentUser: window.currentUser,
      },
    };
  }

  const store = configureStore(preloadedState);
  ReactDOM.render(<Root store={store} />, rootEl);

  // testing
  window.login = login;
  window.logout = logout;
  window.signup = signup;
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  // testing 
});
