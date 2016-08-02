require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title about" do
    assert_equal full_title, "TuanVC" 
    assert_equal full_title("About"), "About | TuanVC"
  end
end
