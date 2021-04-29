class Api::ReviewsController < ApplicationController
  before_action :require_login, only: [:create, :destroy]

  def create
    @review = current_user.reviews.new(review_params)

    if @review.save
      render :show
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  def destroy
    @review = current_user.reviews.find_by(id: params[:id])

    if @review
      @review.destroy
      render :show
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  def index
    @reviews = Review.all
    render :index
  end

  def show
    @review = Review.find_by(id: params[:id])
    if @review
      render :show
    else
      render json: @review.errors.full_messages, status: 404
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :product_id, :author_id)
  end
end
