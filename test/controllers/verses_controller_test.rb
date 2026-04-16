require "test_helper"

class VersesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get verses_show_url
    assert_response :success
  end
end
