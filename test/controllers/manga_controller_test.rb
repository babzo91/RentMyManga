require "test_helper"

class MangaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manga_index_url
    assert_response :success
  end

  test "should get new" do
    get manga_new_url
    assert_response :success
  end

  test "should get create" do
    get manga_create_url
    assert_response :success
  end

  test "should get show" do
    get manga_show_url
    assert_response :success
  end

  test "should get update" do
    get manga_update_url
    assert_response :success
  end
end
