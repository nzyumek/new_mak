require 'test_helper'

class NewsfeedTest < ActiveSupport::TestCase
  include Devise::Test::IntegrationHelpers

  
  def setup
    sign_in FactoryBot.create(:user)
  end
  

end
