require 'test_helper'

class MakControllerTest < ActionDispatch::IntegrationTest
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | 明治大学アナウンス研究会"
  end


end
