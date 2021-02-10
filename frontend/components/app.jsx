import React from "react";
import Home from "./home/home";
import NavBarContainer from "./nav_bar/nav_bar_container";
import SignupContainer from "./session/signup_container";
import LoginContainer from "./session/login_container";
import { Route, Link } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../util/route_util";

const App = () => (
  <div>
    <Route path="/" component={NavBarContainer} />
    <Route exact path="/" component={Home} />
    <Route path="/signup" component={SignupContainer} />
    <Route path="/login" component={LoginContainer} />
  </div>
);

export default App;
