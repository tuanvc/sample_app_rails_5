require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  test "should get map" do
    get map_path
    assert_response :success
    assert_select "h2","Hint: it's Soc Son town"
  end
end
