import React from "react";
import SignupFormContainer from "./session/signup_form_container";
import { Route, Link } from "react-router-dom";

export default () => (
  <div>
    <header>
      <Route path="/" className="header-link">
        <h1>Welcome to Volta!</h1>
        <Link to="/signup">Create Account</Link>
      </Route>
    </header>
    <Route path="/signup" component={SignupFormContainer}>
    </Route>
  </div>
);
