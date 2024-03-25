require "test_helper"

class PanierControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get panier_index_url
    assert_response :success
  end

  test "should get create" do
    get panier_create_url
    assert_response :success
  end

  test "should get destroy" do
    get panier_destroy_url
    assert_response :success
  end
end
