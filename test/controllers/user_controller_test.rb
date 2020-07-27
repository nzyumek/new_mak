require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::ControllerHelpers
  
  def setup
    @request.env["devise.mapping"] = Devise.mappings[:admin]
    sign_in FactoryBot.create(:admin)
  end
  
end
