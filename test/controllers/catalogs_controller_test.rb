require "test_helper"

class CatalogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get catalogs_index_url
    assert_response :success
  end

  test "should get show" do
    get catalogs_show_url
    assert_response :success
  end
end
