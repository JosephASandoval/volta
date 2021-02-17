import React from "react";
import { Route, Switch, Link } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../util/route_util";

// Components
import Splash from "./homepage/splash";
import UserProfileContainer from "./user_profile/user_profile_container";
import SignupContainer from "./session/signup_container";
import LoginContainer from "./session/login_container";
import NotFoundContainer from "./notfound/notfound_container";
import ProductIndexContainer from "./products/product_index_container"
import ModelSContainer from "./products/model_s_container";

const App = () => {
  return (
    <div>
      <Switch>
        <Route exact path="/" component={Splash} />

        <AuthRoute exact path="/signup" component={SignupContainer} />

        <AuthRoute exact path="/login" component={LoginContainer} />

        <ProtectedRoute
          exact
          path="/userProfile"
          component={UserProfileContainer}
        />

        <ProtectedRoute
          exact
          path="/products"
          component={ProductIndexContainer}
        />

        <ProtectedRoute
          exact
          path="/products/:productId"
          component={ModelSContainer}
        />

        <Route path="*" component={NotFoundContainer} />
      </Switch>
    </div>
  );
};

export default App;
