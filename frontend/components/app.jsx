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

  const [isMenuOpen, setIsMenuOpen] = useState(false);
  

  return (
    <div>
      <Switch>
        <Route exact path="/" component={Splash} />
        <AuthRoute path="/signup" component={SignupContainer} />
        <AuthRoute path="/login" component={LoginContainer} />
        <Route path="/userProfile" component={UserProfileContainer} />
        <Route path="*" component={NotFound} />
      </Switch>
    </div>
  );
};

export default App;
