require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get products_show_url
    assert_response :success
  end

  test "should get ajax" do
    get products_ajax_url
    assert_response :success
  end
end
