require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get adminpage1" do
    get :adminpage1
    assert_response :success
  end

  test "should get adminpage" do
    get :adminpage
    assert_response :success
  end

  test "should get 2" do
    get :2
    assert_response :success
  end

end
