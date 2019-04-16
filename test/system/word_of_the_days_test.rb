require "application_system_test_case"

class WordOfTheDaysTest < ApplicationSystemTestCase
  setup do
    @word_of_the_day = word_of_the_days(:one)
  end

  test "visiting the index" do
    visit word_of_the_days_url
    assert_selector "h1", text: "Word Of The Days"
  end

  test "creating a Word of the day" do
    visit word_of_the_days_url
    click_on "New Word Of The Day"

    click_on "Create Word of the day"

    assert_text "Word of the day was successfully created"
    click_on "Back"
  end

  test "updating a Word of the day" do
    visit word_of_the_days_url
    click_on "Edit", match: :first

    click_on "Update Word of the day"

    assert_text "Word of the day was successfully updated"
    click_on "Back"
  end

  test "destroying a Word of the day" do
    visit word_of_the_days_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Word of the day was successfully destroyed"
  end
end
