require 'test_helper'

class CartControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cart_index_url
    assert_response :success
  end

  test "should get add" do
    get cart_add_url
    assert_response :success
  end

  test "should get edit" do
    get cart_edit_url
    assert_response :success
  end

end
