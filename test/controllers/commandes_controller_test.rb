require "test_helper"

class CommandesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get commandes_index_url
    assert_response :success
  end
end
