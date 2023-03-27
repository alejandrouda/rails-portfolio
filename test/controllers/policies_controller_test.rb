require "test_helper"

class PoliciesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get policies_show_url
    assert_response :success
  end
end
