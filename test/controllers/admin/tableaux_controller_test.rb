require "test_helper"

class Admin::TableauxControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_tableaux_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_tableaux_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_tableaux_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_tableaux_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_tableaux_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_tableaux_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_tableaux_destroy_url
    assert_response :success
  end
end
