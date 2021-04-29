import React from "react";
import { createReview, removeErrors } from "../../actions/review_actions";
import StarRatingComponent from "react-star-rating-component";
import { connect } from "react-redux";

class ReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      rating: 0,
      content: "",
      productId: null,
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.onStarClick = this.onStarClick.bind(this);
  }

  componentDidMount() {
    this.setState({
      productId: this.props.productId,
    });
    this.props.removeErrors();
  }

  update(field) {
    return (e) =>
      this.setState({
        [field]: e.currentTarget.value,
      });
  }
  handleSubmit(e) {
    e.preventDefault();
    if (this.props.currentUser) {
      const productId = parseInt(this.state.productId);
      const review = Object.assign({}, this.state, {
        product_id: productId,
      });
      this.props.createReview(review);
      this.setState({
        content: "",
        rating: 0,
      });
    } else {
      this.props.history.push("/login");
    }
  }

  onStarClick(nextValue) {
    this.setState({ rating: nextValue });
  }

  renderErrors(err) {
    return <p className="error">{err.length === 0 ? " " : err[0]}</p>;
  }

  render() {
    return (
      <div className="ReviewForm">
        <div className="form-container" onSubmit={this.handleSubmit}>
          <div className="rating-title-text">Overall rating</div>
          <div className="rating-container">
            <StarRatingComponent
              name="add-rating"
              starCount={5}
              value={this.state.rating}
              onStarClick={this.onStarClick}
              className="add-star-rating"
              starColor={"#222323"}
              emptyStarColor={"#DDDCDC"}
            />
            <div className="errorMessage">
              {this.renderErrors(this.props.errors)}
            </div>
          </div>
          <textarea
            rows={5}
            className="body-input"
            onChange={this.update("content")}
            value={this.state.content}
            name="content"
            placeholder="Please leave a review of your purchase here..."
          />
          <div className="submitbtn" onClick={this.handleSubmit}>
            <p>Add Review</p>
          </div>
        </div>
      </div>
    );
  }
}

const mapStateToProps = (state) => {
  return {
    errors: state.errors.review,
    currentUser: state.entities.users[state.session.id],
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    createReview: (review) => dispatch(createReview(review)),
    removeErrors: () => dispatch(removeErrors()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(ReviewForm);
