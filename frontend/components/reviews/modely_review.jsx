import React from "react";
import ReviewForm from "./review_form";
import ReviewShow from "./review_show";
import StarRatingComponent from "react-star-rating-component";
import { connect } from "react-redux";
import { requestProduct } from "../../actions/product_actions";
import {
  selectProduct,
  selectReviewsForProduct,
} from "../../reducers/selectors";
import HeaderNonStick from "../homepage/header_non_stick";
import Menu from "../homepage/menu";

class ModelYReview extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      isMenuOpen: false,
    };

    this.setIsMenuOpen = this.setIsMenuOpen.bind(this);
  }

  setIsMenuOpen() {
    this.setState({
      isMenuOpen: !this.state.isMenuOpen,
    });
  }

  render() {
    const { product, productReviews, sessionId } = this.props;

    if (!product || !productReviews) return null;

    const ownReview = productReviews.filter(
      (review) => review && review.authorId === sessionId
    );

    const othersReviews = productReviews.filter(
      (review) => review && review.authorId !== sessionId
    );

    let avgRate;
    if (productReviews.length === 0) {
      avgRate = 0;
    } else {
      avgRate = productReviews[0].avgRating;
    }

    return (
      <div className="car__reviewWhite">
        <HeaderNonStick
          isMenuOpen={this.state.isMenuOpen}
          setIsMenuOpen={this.setIsMenuOpen}
        />
        {this.state.isMenuOpen && <Menu />}

        <div className={this.state.isMenuOpen ? "background-dim" : ""}>
          <div
            className="item"
            style={{ backgroundImage: `url(${window.modelYURL})` }}
          >
            <div className="item__info">
              <div className="item__infoText">
                <h2>Model Y Reviews</h2>
              </div>
              <div className="item__downArrow">
                <div className="box bounce">
                  <img src={window.downArrowURL} alt="Down Arrow" />
                </div>
              </div>
            </div>
          </div>

          <div className="ProductShowContainer">
            <div className="leftCol">
              <div className="totalReview">
                <div className="reviewCount">
                  {product.reviewIds.length} Reviews
                </div>
                <div className="reviewValue">
                  <StarRatingComponent
                    name="average-rating"
                    editing={false}
                    starCount={5}
                    value={parseFloat(avgRate)}
                    starColor={"#222323"}
                    emptyStarColor={"#DDDCDC"}
                    starSpacing="15px"
                  />
                </div>
              </div>
              {ownReview && ownReview.length === 1 ? (
                <ReviewShow review={ownReview[0]} key={ownReview[0].id} />
              ) : (
                <ReviewForm
                  history={this.props.history}
                  productId={product.id}
                />
              )}
              {othersReviews.map((review, key) => (
                <ReviewShow review={review} key={key} />
              ))}
            </div>
          </div>
        </div>
      </div>
    );
  }
}

const mapStateToProps = (state) => {
  if (!state.entities.products) {
    return {
      product: {},
    };
  }

  const productId = 3929;
  const product = selectProduct(state.entities.products, productId);
  const productReviews = selectReviewsForProduct(state.entities, product);

  return {
    product,
    productReviews,
    sessionId: state.session.id,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestProduct: (productId) => dispatch(requestProduct(productId)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(ModelYReview);
