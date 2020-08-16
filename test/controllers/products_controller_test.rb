require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { creator_id: @product.creator_id, name: @product.name, ph_comments: @product.ph_comments, ph_id: @product.ph_id, ph_launchdate: @product.ph_launchdate, ph_likes: @product.ph_likes, ph_topic: @product.ph_topic, ph_url: @product.ph_url, topic_id: @product.topic_id } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { creator_id: @product.creator_id, name: @product.name, ph_comments: @product.ph_comments, ph_id: @product.ph_id, ph_launchdate: @product.ph_launchdate, ph_likes: @product.ph_likes, ph_topic: @product.ph_topic, ph_url: @product.ph_url, topic_id: @product.topic_id } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
