require 'test_helper'

class UnfinishedProjectsControllerTest < ActionController::TestCase
  setup do
    @unfinished_project = unfinished_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unfinished_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unfinished_project" do
    assert_difference('UnfinishedProject.count') do
      post :create, unfinished_project: @unfinished_project.attributes
    end

    assert_redirected_to unfinished_project_path(assigns(:unfinished_project))
  end

  test "should show unfinished_project" do
    get :show, id: @unfinished_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unfinished_project
    assert_response :success
  end

  test "should update unfinished_project" do
    put :update, id: @unfinished_project, unfinished_project: @unfinished_project.attributes
    assert_redirected_to unfinished_project_path(assigns(:unfinished_project))
  end

  test "should destroy unfinished_project" do
    assert_difference('UnfinishedProject.count', -1) do
      delete :destroy, id: @unfinished_project
    end

    assert_redirected_to unfinished_projects_path
  end
end
