class Api::ProductsController < ApplicationController
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
    params.require(:product).permit(:name, :price, :exterior, :interior_color, :interior_name, :wheel_type, :self_driving, :view)
  end
end
