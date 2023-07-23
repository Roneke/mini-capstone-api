class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def create
    @carted_product = CartedProduct.create(
      quantity: params[:quantity],
      product_id: params[:product_id],
      user_id: params[:user_id],
      order_id: params[:order_id],
      status: params[:status],
    )
    if @carted_product.valid?
      render :show
    else
      render json: { errors: @carted_product.errors.full_messages }, status: 422
    end
  end
end
