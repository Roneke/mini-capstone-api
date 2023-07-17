class ProductsController < ApplicationController
  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],supplier_id: params[:supplier_id]
    )
    if @product.valid?
      #render json: product.as_json
      render template: "products/show"
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      description: params[:description] || @product.description,
      supplier_id: params[:supplier_id] || @product.supplier_id
    )
    if @product.valid?
      render template: "products/show"
    else render json: { errors: @product.errors.full_messages }, status: 422
 #render json: product.as_json
           # render template: "products/show"
          end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "maybe it works" }
  end
end
