require "test_helper"

class Admin::CommandesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_commandes_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_commandes_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_commandes_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_commandes_update_url
    assert_response :success
  end
end
