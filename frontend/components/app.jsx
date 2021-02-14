import React from "react";
import { Route, Switch, Link } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../util/route_util";

// Components
import Splash from "./homepage/splash";
import UserProfileContainer from "./user_profile/user_profile_container";
import SignupContainer from "./session/signup_container";
import LoginContainer from "./session/login_container";
import NotFound from "./notfound/notfound";

const App = () => {
  return (
    <div>
      <Switch>
        <Route exact path="/" component={Splash} />

        <AuthRoute exact path="/signup" component={SignupContainer} />

        <AuthRoute exact path="/login" component={LoginContainer} />

        <Route exact path="/userProfile" component={UserProfileContainer} />

        <Route path="*" component={NotFound} />
      </Switch>
    </div>
  );
};

export default App;
