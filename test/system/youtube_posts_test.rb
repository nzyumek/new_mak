require "application_system_test_case"

class YoutubePostsTest < ApplicationSystemTestCase
  setup do
    @youtube_post = youtube_posts(:one)
  end

  test "visiting the index" do
    visit youtube_posts_url
    assert_selector "h1", text: "Youtube Posts"
  end

  test "creating a Youtube post" do
    visit youtube_posts_url
    click_on "New Youtube Post"

    fill_in "Title", with: @youtube_post.title
    click_on "Create Youtube post"

    assert_text "Youtube post was successfully created"
    click_on "Back"
  end

  test "updating a Youtube post" do
    visit youtube_posts_url
    click_on "Edit", match: :first

    fill_in "Title", with: @youtube_post.title
    click_on "Update Youtube post"

    assert_text "Youtube post was successfully updated"
    click_on "Back"
  end

  test "destroying a Youtube post" do
    visit youtube_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Youtube post was successfully destroyed"
  end
end
