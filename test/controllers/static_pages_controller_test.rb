require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = " | TuanVC"
  end

  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Home#{@base_title}"
    assert_select "h2", "Chào các bạn, mình là Tún"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home#{@base_title}"
  end

  test "should get pictures" do
    get static_pages_pictures_url
    assert_response :success
    assert_select "title", "Pictures#{@base_title}"
  end
  
  test "should get videos" do
    get static_pages_videos_url
    assert_response :success
    assert_select "title", "Videos#{@base_title}"
  end
  
  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About#{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help#{@base_title}"
  end
end
