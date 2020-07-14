require 'test_helper'

class MakControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "明治大学アナウンス研究会"
  end
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end


end
