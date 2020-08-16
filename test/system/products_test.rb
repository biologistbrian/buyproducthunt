require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Creator", with: @product.creator_id
    fill_in "Name", with: @product.name
    fill_in "Ph comments", with: @product.ph_comments
    fill_in "Ph", with: @product.ph_id
    fill_in "Ph launchdate", with: @product.ph_launchdate
    fill_in "Ph likes", with: @product.ph_likes
    fill_in "Ph topic", with: @product.ph_topic
    fill_in "Ph url", with: @product.ph_url
    fill_in "Topic", with: @product.topic_id
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Creator", with: @product.creator_id
    fill_in "Name", with: @product.name
    fill_in "Ph comments", with: @product.ph_comments
    fill_in "Ph", with: @product.ph_id
    fill_in "Ph launchdate", with: @product.ph_launchdate
    fill_in "Ph likes", with: @product.ph_likes
    fill_in "Ph topic", with: @product.ph_topic
    fill_in "Ph url", with: @product.ph_url
    fill_in "Topic", with: @product.topic_id
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
