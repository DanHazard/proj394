require 'test_helper'

class EmployerInfosControllerTest < ActionController::TestCase
  setup do
    @employer_info = employer_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employer_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employer_info" do
    assert_difference('EmployerInfo.count') do
      post :create, employer_info: { city: @employer_info.city, client_id: @employer_info.client_id, companyName: @employer_info.companyName, state: @employer_info.state }
    end

    assert_redirected_to employer_info_path(assigns(:employer_info))
  end

  test "should show employer_info" do
    get :show, id: @employer_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employer_info
    assert_response :success
  end

  test "should update employer_info" do
    patch :update, id: @employer_info, employer_info: { city: @employer_info.city, client_id: @employer_info.client_id, companyName: @employer_info.companyName, state: @employer_info.state }
    assert_redirected_to employer_info_path(assigns(:employer_info))
  end

  test "should destroy employer_info" do
    assert_difference('EmployerInfo.count', -1) do
      delete :destroy, id: @employer_info
    end

    assert_redirected_to employer_infos_path
  end
end
