require 'test_helper'

class ComicChapterSidesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get comic_chapter_sides_index_url
    assert_response :success
  end

  test "should get show" do
    get comic_chapter_sides_show_url
    assert_response :success
  end

end
