require 'test_helper'

class ArtWorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @art_work = art_works(:one)
  end

  test "should get index" do
    get art_works_url
    assert_response :success
  end

  test "should get new" do
    get new_art_work_url
    assert_response :success
  end

  test "should create art_work" do
    assert_difference('ArtWork.count') do
      post art_works_url, params: { art_work: { description: @art_work.description, image_link: @art_work.image_link, style: @art_work.style, title: @art_work.title, wiki: @art_work.wiki, year: @art_work.year } }
    end

    assert_redirected_to art_work_url(ArtWork.last)
  end

  test "should show art_work" do
    get art_work_url(@art_work)
    assert_response :success
  end

  test "should get edit" do
    get edit_art_work_url(@art_work)
    assert_response :success
  end

  test "should update art_work" do
    patch art_work_url(@art_work), params: { art_work: { description: @art_work.description, image_link: @art_work.image_link, style: @art_work.style, title: @art_work.title, wiki: @art_work.wiki, year: @art_work.year } }
    assert_redirected_to art_work_url(@art_work)
  end

  test "should destroy art_work" do
    assert_difference('ArtWork.count', -1) do
      delete art_work_url(@art_work)
    end

    assert_redirected_to art_works_url
  end
end
