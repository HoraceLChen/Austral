require "test_helper"

class ShoesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shoes_show_url
    assert_response :success
  end
end
