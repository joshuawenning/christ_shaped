require "test_helper"

class VersesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    verse = verses(:one)
    get verse_url(verse)
    assert_response :success
  end
end
