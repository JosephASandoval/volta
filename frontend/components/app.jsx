import React from "react";
import GreetingContainer from "./greeting/greeting_container";
import SignupContainer from "./session/signup_container";
import LoginContainer from "./session/login_container";
import { Route, Link } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../util/route_util";

const App = () => (
  <div>
    <Route path="/" component={GreetingContainer} />
    <Route path="/signup" component={SignupContainer} />
    <Route path="/login" component={LoginContainer} />
  </div>
);

export default App;
