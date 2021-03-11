import React from "react";
import { Route, Switch, Link } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../util/route_util";

// Components
import Splash from "./homepage/splash";
import UserProfileContainer from "./user_profile/user_profile_container";
import SignupContainer from "./session/signup_container";
import LoginContainer from "./session/login_container";
import NotFoundContainer from "./notfound/notfound_container";
import ModelsContainer from "./cars/models/models_container";
import Model3Container from "./cars/model3/model3_container";
import ModelxContainer from "./cars/modelx/modelx_container";
import ModelyContainer from "./cars/modely/modely_container";

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

        <Route exact path="/models" component={ModelsContainer} />

        <Route exact path="/model3" component={Model3Container} />

        <Route exact path="/modelx" component={ModelxContainer} />

        <Route exact path="/modely" component={ModelyContainer} />

        <Route path="*" component={NotFoundContainer} />
      </Switch>
    </div>
  );
};

export default App;
