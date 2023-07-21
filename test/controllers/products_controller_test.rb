require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user=User.create (name:"Admin",email: "admin@test.com",password:"password",password_confirmation: "password", admin: true)

    post "/sessions.json",params: {email: "admin@test.com",password: "password"}
    data = Json.parse (response.body)
    @jwt = data ["jwt"]

  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end

  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: { name: "test", price: 10,supplier_id: Supplier.first.id,  description: "test description" }
      assert_response 200
    end

    post "/products.json",
    headers: {"Authorization"=> "Bearer #{@jwt}"},
     params: {}
    assert_response 422

    post "/products.json"
    assert_response 401
  end

  test "update" do
    product = Product.first


    patch "/products/#{product.id}.json", 
    headers: {"Authorization" => "Bearer #{@jwt}"},
    params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]

  
    patch "/products/#{product.id}.json", 
    headers: {"Authorization" => "Bearer #{@jwt}"},
    params: {name: "" }
    assert_response 422

   
    patch "/products/#{product.id}.json"
    assert_response 401
  end


  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "description", "is_discounted?", "tax", "total", "supplier", "supplier_id", "images"], data.keys
  end

  test "destroy" do
    assert_difference "Product.count", -1 do
      delete "/products/#{Product.first.id}.json",
      headers: {"Authorization"=> "Bearer#{@jwt}"}
      assert_response 200
    end
    delete "/products/#{product.first.id}.json"
    assert_response 401
  end
end
