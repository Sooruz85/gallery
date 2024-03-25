require "test_helper"

class PaiementsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get paiements_new_url
    assert_response :success
  end

  test "should get create" do
    get paiements_create_url
    assert_response :success
  end
end
