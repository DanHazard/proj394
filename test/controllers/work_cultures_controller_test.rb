require 'test_helper'

class WorkCulturesControllerTest < ActionController::TestCase
  setup do
    @work_culture = work_cultures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_cultures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_culture" do
    assert_difference('WorkCulture.count') do
      post :create, work_culture: { accurate: @work_culture.accurate, client_id: @work_culture.client_id, creative: @work_culture.creative, efficient: @work_culture.efficient, leader: @work_culture.leader, leader: @work_culture.leader, listener: @work_culture.listener, logical: @work_culture.logical, multitasker: @work_culture.multitasker, oral_communicator: @work_culture.oral_communicator, people_skills: @work_culture.people_skills, planner: @work_culture.planner, problem_solver: @work_culture.problem_solver, punctual: @work_culture.punctual, researcher: @work_culture.researcher, team_member: @work_culture.team_member, written_communicator: @work_culture.written_communicator }
    end

    assert_redirected_to work_culture_path(assigns(:work_culture))
  end

  test "should show work_culture" do
    get :show, id: @work_culture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_culture
    assert_response :success
  end

  test "should update work_culture" do
    patch :update, id: @work_culture, work_culture: { accurate: @work_culture.accurate, client_id: @work_culture.client_id, creative: @work_culture.creative, efficient: @work_culture.efficient, leader: @work_culture.leader, leader: @work_culture.leader, listener: @work_culture.listener, logical: @work_culture.logical, multitasker: @work_culture.multitasker, oral_communicator: @work_culture.oral_communicator, people_skills: @work_culture.people_skills, planner: @work_culture.planner, problem_solver: @work_culture.problem_solver, punctual: @work_culture.punctual, researcher: @work_culture.researcher, team_member: @work_culture.team_member, written_communicator: @work_culture.written_communicator }
    assert_redirected_to work_culture_path(assigns(:work_culture))
  end

  test "should destroy work_culture" do
    assert_difference('WorkCulture.count', -1) do
      delete :destroy, id: @work_culture
    end

    assert_redirected_to work_cultures_path
  end
end
