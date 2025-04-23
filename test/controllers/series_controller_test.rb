require "test_helper"

class SeriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get series_index_url
    assert_response :success
  end

  test "should get show" do
    get series_show_url
    assert_response :success
  end

  test "should get favourites" do
    get series_favourites_url
    assert_response :success
  end
end
