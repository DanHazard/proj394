require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get dhome" do
    get :dhome
    assert_response :success
  end

end
