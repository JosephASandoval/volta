import React from "react";
import SignupContainer from "./session/signup_container";
import LoginContainer from "./session/login_container";
import { Route, Link } from "react-router-dom";

const App = () => (
  <div>
    <header>
      <Route path="/" className="header-link">
        <h1>Welcome to Volta!</h1>
        <Link to="/signup">Create Account</Link>
        <br/>
        <Link to="/login">Sign In</Link>
      </Route>
    </header>
    <Route path="/signup" component={SignupContainer} />
    <Route path="/login" component={LoginContainer} />
  </div>
);

export default App;
