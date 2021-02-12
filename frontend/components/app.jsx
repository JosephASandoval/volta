import React from "react";
import { Route, Switch, Link } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../util/route_util";

// Components
import Index from "./homepage/index";
import GreetingContainer from "./greeting/greeting_container";
import SignupContainer from "./session/signup_container";
import LoginContainer from "./session/login_container";


const App = () => (
  <div>
    <Route exact path="/" component={Index} />
    <AuthRoute path="/signup" component={SignupContainer} />
    <AuthRoute path="/login" component={LoginContainer} />
    <Route path="/greeting" component={GreetingContainer} />
  </div>
);

export default App;


