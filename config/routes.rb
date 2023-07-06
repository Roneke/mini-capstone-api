Rails.application.routes.draw do
  get "/each_product" => "products#store_product"
end
