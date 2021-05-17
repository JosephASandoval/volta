import React, { useEffect } from "react";
import { connect } from "react-redux";
import { requestAllProducts } from "../actions/product_actions";
import { Route, Switch } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../util/route_util";
import UseFullPageLoader from "./loading/use_full_page_loader";
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
import CartShowContainer from "./cart/cart_show_container";
// Reviews
import Model3Review from "./reviews/model3_review";
import ModelsReview from "./reviews/models_review";
import ModelxReview from "./reviews/modelx_review";
import ModelyReview from "./reviews/modely_review";

const App = ({ products, requestAllProducts }) => {
  const [loader, showLoader, hideLoader] = UseFullPageLoader();

  useEffect(() => {
    if (products.length === 0) {
      showLoader();
      requestAllProducts().then(() => {
        hideLoader();
      });
    }
  }, []);

  return (
    <>
      <div>
        <Switch>
          <Route exact path="/" component={Splash} />

          <Route path="/cart" component={CartShowContainer} />

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

          <Route exact path="/models/reviews" component={ModelsReview} />

          <Route exact path="/model3/reviews" component={Model3Review} />

          <Route exact path="/modelx/reviews" component={ModelxReview} />

          <Route exact path="/modely/reviews" component={ModelyReview} />

          <Route path="*" component={NotFoundContainer} />
        </Switch>
      </div>
      {loader}
    </>
  );
};

const mapStateToProps = ({ entities: { products } }) => {
  return {
    products: Object.values(products),
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestAllProducts: () => dispatch(requestAllProducts()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(App);
