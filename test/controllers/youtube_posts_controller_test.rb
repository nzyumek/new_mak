require 'test_helper'

class YoutubePostsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in FactoryBot.create(:user)
    @youtube_post = youtube_posts(:one)
  end  



  test "should get index" do
    get youtube_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_youtube_post_url
    assert_response :success
  end

  test "should create youtube_post" do
    assert_difference('YoutubePost.count') do
      post youtube_posts_url, params: { youtube_post: { title: @youtube_post.title } }
    end

    assert_redirected_to youtube_post_url(YoutubePost.last)
  end

  test "should show youtube_post" do
    get youtube_post_url(@youtube_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_youtube_post_url(@youtube_post)
    assert_response :success
  end

  test "should update youtube_post" do
    patch youtube_post_url(@youtube_post), params: { youtube_post: { title: @youtube_post.title } }
    assert_redirected_to youtube_post_url(@youtube_post)
  end

  test "should destroy youtube_post" do
    assert_difference('YoutubePost.count', -1) do
      delete youtube_post_url(@youtube_post)
    end

    assert_redirected_to youtube_posts_url
  end
end
