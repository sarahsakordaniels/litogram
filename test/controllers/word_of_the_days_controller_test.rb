require 'test_helper'

class WordOfTheDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @word_of_the_day = word_of_the_days(:one)
  end

  test "should get index" do
    get word_of_the_days_url
    assert_response :success
  end

  test "should get new" do
    get new_word_of_the_day_url
    assert_response :success
  end

  test "should create word_of_the_day" do
    assert_difference('WordOfTheDay.count') do
      post word_of_the_days_url, params: { word_of_the_day: {  } }
    end

    assert_redirected_to word_of_the_day_url(WordOfTheDay.last)
  end

  test "should show word_of_the_day" do
    get word_of_the_day_url(@word_of_the_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_word_of_the_day_url(@word_of_the_day)
    assert_response :success
  end

  test "should update word_of_the_day" do
    patch word_of_the_day_url(@word_of_the_day), params: { word_of_the_day: {  } }
    assert_redirected_to word_of_the_day_url(@word_of_the_day)
  end

  test "should destroy word_of_the_day" do
    assert_difference('WordOfTheDay.count', -1) do
      delete word_of_the_day_url(@word_of_the_day)
    end

    assert_redirected_to word_of_the_days_url
  end
end
