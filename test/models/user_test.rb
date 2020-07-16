require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(username: "ExampleUser", email: "user@example.com",
                password: "foobar", password_confirmation: "foobar",
                bachelor: "aaa", major: "aaa", lastn: "example", firstn: "user",
                h_firstn: "example", h_lastn: "user", gen: "50", studno: "111")
  end

  test "should be valid" do
    assert @user.valid?
  end
  
  test "name should be present" do
    @user.username = "     "
    assert_not @user.valid?
  end  

  test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end
  
  test "all info should be present" do
    @user.bachelor = "     "
    @user.major = "     "
    @user.lastn = "     "
    @user.firstn = "     "
    @user.h_firstn = "     "
    @user.h_lastn = "     "
    @user.gen = "     "
    @user.studno = "     "
    assert_not @user.valid?
  end

end
