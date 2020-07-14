require 'test_helper'

class MakControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get mak_home_url
    assert_response :success
  end

  test "should get about" do
    get mak_about_url
    assert_response :success
  end

  test "should get news" do
    get mak_news_url
    assert_response :success
  end

  test "should get inquiry" do
    get mak_inquiry_url
    assert_response :success
  end

end
