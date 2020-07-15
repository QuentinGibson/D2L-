require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get calendar" do
    get static_pages_calendar_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

end
