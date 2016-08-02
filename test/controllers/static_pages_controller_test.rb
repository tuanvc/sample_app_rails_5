require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = " | TuanVC"
  end

  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Home#{@base_title}"
  end

  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "Home#{@base_title}"
  end

  test "should get pictures" do
    get pictures_path
    assert_response :success
    assert_select "title", "Pictures#{@base_title}"
  end
  
  test "should get videos" do
    get videos_path
    assert_response :success
    assert_select "title", "Videos#{@base_title}"
  end
  
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About#{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact#{@base_title}"
  end
end
