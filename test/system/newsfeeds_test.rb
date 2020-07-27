require "application_system_test_case"

class NewsfeedsTest < ApplicationSystemTestCase
  setup do
    @newsfeed = newsfeeds(:one)
    #@user = users(:yume)
  end

  test "visiting the index" do
    visit newsfeeds_url
    assert_selector "h1", text: "Newsfeeds"
  end

  test "creating a Newsfeed" do
    visit newsfeeds_url
    click_on "New Newsfeed"

    fill_in "Content", with: @newsfeed.content
    fill_in "Date", with: @newsfeed.date
    fill_in "Title", with: @newsfeed.title
    click_on "Create Newsfeed"

    assert_text "Newsfeed was successfully created"
    click_on "Back"
  end

  test "updating a Newsfeed" do
    visit newsfeeds_url
    click_on "Edit", match: :first

    fill_in "Content", with: @newsfeed.content
    fill_in "Date", with: @newsfeed.date
    fill_in "Title", with: @newsfeed.title
    click_on "Update Newsfeed"

    assert_text "Newsfeed was successfully updated"
    click_on "Back"
  end

  test "destroying a Newsfeed" do
    visit newsfeeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newsfeed was successfully destroyed"
  end
end
