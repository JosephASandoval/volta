class Api::CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all.select{ |item| item.user_id == current_user.id }
    render 'api/cart_items/index'
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    if @cart_item.save && logged_in?
      redirect_to action: 'index'
    else
      render json: @cart_item.errors.full_messages, status: 404
    end 
  end

  def update
    if logged_in?
      @cart_item = CartItem.find_by(id: params[:id])
      if @cart_item && (params[:increase] == 'true')
        @cart_item.quantity += get_quantity
        @cart_item.save
        @cart_items = CartItem.all.select{ |item| item.user_id == current_user.id }
        render :index
      else  
        if @cart_item.update(cart_item_params)
          @cart_items = CartItem.all.select{ |item| item.user_id == current_user.id }
          render :index
        else
          render json: @cart_item.errors.full_messages, status: 404
        end
      end
    else  
      require_login
    end
  end

  def destroy
    if logged_in?
      @cart_item = CartItem.find_by(id: params[:id])
      @cart_item.destroy
      @cart_items = CartItem.all.select{ |item| item.user_id == current_user.id }
      render :index
    else
      require_login
    end
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:product_id, :user_id, :quantity)
  end

  def get_quantity
    params[:cart_item][:quantity].to_i
  end
end
