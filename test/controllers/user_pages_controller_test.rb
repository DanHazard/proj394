require 'test_helper'

class UserPagesControllerTest < ActionController::TestCase
  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get browse_jobs" do
    get :browse_jobs
    assert_response :success
  end

  test "should get employers" do
    get :employers
    assert_response :success
  end

end
