require "test_helper"

class TableauxControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tableaux_index_url
    assert_response :success
  end

  test "should get show" do
    get tableaux_show_url
    assert_response :success
  end
end
