class Api::ProductsController < ApplicationController
  before_action :require_login

  def create
    @product = Product.new(product_params)

    if @product.save
      render :show #"api/products/show"
    else
      render json: @product.errors.full_messages, status: 422
    end
  end

  def index 
    @products = Product.all 
    render :index #"api/products/index"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render :show #"api/products/show"
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :exterior_color, :interior_color, :wheel_type, :trim, :self_driving)
  end
end
