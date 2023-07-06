class ProductsController < ApplicationController
  def store_product
    product = Product.all
    render json: product.as_json
  end
end
