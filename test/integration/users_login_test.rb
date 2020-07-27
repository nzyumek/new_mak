require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in FactoryBot.create(:user)
  end
  
  # test "test login" do
  #   assery :user.valid?
  # end
  
  # test "login with valid email/invalid password" do
  #   assert sign_in(email: @user.email, password: "invalid") 
  #   assert_template 'devise/sessions/new'
  #   assert_not flash.empty?
  #   get root_path
  #   assert flash.empty?
  # end

end
