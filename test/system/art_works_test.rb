require "application_system_test_case"

class ArtWorksTest < ApplicationSystemTestCase
  setup do
    @art_work = art_works(:one)
  end

  test "visiting the index" do
    visit art_works_url
    assert_selector "h1", text: "Art Works"
  end

  test "creating a Art work" do
    visit art_works_url
    click_on "New Art Work"

    fill_in "Description", with: @art_work.description
    fill_in "Image link", with: @art_work.image_link
    fill_in "Style", with: @art_work.style
    fill_in "Title", with: @art_work.title
    fill_in "Wiki", with: @art_work.wiki
    fill_in "Year", with: @art_work.year
    click_on "Create Art work"

    assert_text "Art work was successfully created"
    click_on "Back"
  end

  test "updating a Art work" do
    visit art_works_url
    click_on "Edit", match: :first

    fill_in "Description", with: @art_work.description
    fill_in "Image link", with: @art_work.image_link
    fill_in "Style", with: @art_work.style
    fill_in "Title", with: @art_work.title
    fill_in "Wiki", with: @art_work.wiki
    fill_in "Year", with: @art_work.year
    click_on "Update Art work"

    assert_text "Art work was successfully updated"
    click_on "Back"
  end

  test "destroying a Art work" do
    visit art_works_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Art work was successfully destroyed"
  end
end
