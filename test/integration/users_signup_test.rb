require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers # Rails >= 5
    
  
  def setup
    # sign_in FactoryBot.create(:user)
  end

  test "invalid signup information" do
    get new_user_registration_path
    assert_no_difference 'User.count' do
      post user_registration_path, params: { user: { username:  "",
                                         email: "user@invalid",
                                         password:              "foo",
                                         password_confirmation: "bar" } }
    end
    assert_template root_path
  end

  test "valid signup information" do
    get  new_user_registration_path
    assert_difference 'User.count', +1 do
      post user_registration_path,  params: { user: { username: "ExampleUser",
                                        bachelor: "aaa", major: "aaa", lastn: "example", firstn: "user",
                                        h_firstn: "example", h_lastn: "user", gen: "50", studno: "111",
                                        email: "user60@example.com",
                                        password:              "password",
                                        password_confirmation: "password" } }
                                        
    end
    assert_redirected_to root_path
  end
  

end
