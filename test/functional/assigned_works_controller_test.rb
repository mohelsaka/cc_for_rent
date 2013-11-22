require 'test_helper'

class AssignedWorksControllerTest < ActionController::TestCase
  setup do
    @assigned_work = assigned_works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assigned_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assigned_work" do
    assert_difference('AssignedWork.count') do
      post :create, assigned_work: { ccjob_id: @assigned_work.ccjob_id, input_portion: @assigned_work.input_portion, pc_owner_id: @assigned_work.pc_owner_id, progress: @assigned_work.progress, string: @assigned_work.string }
    end

    assert_redirected_to assigned_work_path(assigns(:assigned_work))
  end

  test "should show assigned_work" do
    get :show, id: @assigned_work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assigned_work
    assert_response :success
  end

  test "should update assigned_work" do
    put :update, id: @assigned_work, assigned_work: { ccjob_id: @assigned_work.ccjob_id, input_portion: @assigned_work.input_portion, pc_owner_id: @assigned_work.pc_owner_id, progress: @assigned_work.progress, string: @assigned_work.string }
    assert_redirected_to assigned_work_path(assigns(:assigned_work))
  end

  test "should destroy assigned_work" do
    assert_difference('AssignedWork.count', -1) do
      delete :destroy, id: @assigned_work
    end

    assert_redirected_to assigned_works_path
  end
end
