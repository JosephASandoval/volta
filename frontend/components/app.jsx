import React from "react";
import { Route, Switch, Link } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../util/route_util";

// Components
import Index from "./homepage/index";
import GreetingContainer from "./greeting/greeting_container";
import SignupContainer from "./session/signup_container";
import LoginContainer from "./session/login_container";
import NotFound from "./notfound/notfound"


const App = () => (
  <div>
    <Switch>
      <Route exact path="/" component={Index} />
      <AuthRoute path="/signup" component={SignupContainer} />
      <AuthRoute path="/login" component={LoginContainer} />
      <Route path="/greeting" component={GreetingContainer} />
      <Route path="*" component={NotFound}/>
    </Switch>
  </div>
);

export default App;


