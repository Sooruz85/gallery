require "test_helper"

class Admin::UtilisateursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_utilisateurs_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_utilisateurs_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_utilisateurs_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_utilisateurs_update_url
    assert_response :success
  end
end
