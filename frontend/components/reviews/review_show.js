import React from "react";
import { connect } from "react-redux";
import StarRatingComponent from "react-star-rating-component";
import { deleteReview } from "../../actions/review_actions";

const ReviewShow = ({ review, sessionId, deleteReview }) => {
  if (!review) {
    return null;
  }

  const { rating, content, updatedAt, author, authorId } = review;

  return (
    <div className="ReviewShow">
      <div className="name-time">
        <div className="reviewer-name">{author}</div>
        <div className="review-time">{updatedAt}</div>
        {sessionId === authorId && (
          <div className="removeBtn" onClick={() => deleteReview(review.id)}>
            <p>Remove</p>
          </div>
        )}
      </div>
      <div className="review-content">
        <div className="review-rating">
          <div className="stars">
            <StarRatingComponent
              name="product-rating"
              editing={false}
              starCount={5}
              value={parseFloat(rating)}
              starColor={"#222323"}
              emptyStarColor={"#DDDCDC"}
            />
          </div>
        </div>
        <div className="review-body">
          <div className="review-text">{content}</div>
        </div>
      </div>
    </div>
  );
};

const mapStateToProps = (state) => {
  return {
    sessionId: state.session.id,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    deleteReview: (id) => dispatch(deleteReview(id)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(ReviewShow);
