require 'test_helper'

class ProfileInfosControllerTest < ActionController::TestCase
  setup do
    @profile_info = profile_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profile_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile_info" do
    assert_difference('ProfileInfo.count') do
      post :create, profile_info: { city: @profile_info.city, client_id: @profile_info.client_id, fname: @profile_info.fname, lname: @profile_info.lname, state: @profile_info.state }
    end

    assert_redirected_to profile_info_path(assigns(:profile_info))
  end

  test "should show profile_info" do
    get :show, id: @profile_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile_info
    assert_response :success
  end

  test "should update profile_info" do
    patch :update, id: @profile_info, profile_info: { city: @profile_info.city, client_id: @profile_info.client_id, fname: @profile_info.fname, lname: @profile_info.lname, state: @profile_info.state }
    assert_redirected_to profile_info_path(assigns(:profile_info))
  end

  test "should destroy profile_info" do
    assert_difference('ProfileInfo.count', -1) do
      delete :destroy, id: @profile_info
    end

    assert_redirected_to profile_infos_path
  end
end
