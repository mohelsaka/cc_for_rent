require 'test_helper'

class CcjobsControllerTest < ActionController::TestCase
  setup do
    @ccjob = ccjobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ccjobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ccjob" do
    assert_difference('Ccjob.count') do
      post :create, ccjob: { input_bucket_url: @ccjob.input_bucket_url, job_file_url: @ccjob.job_file_url, name: @ccjob.name, output_bucket_url: @ccjob.output_bucket_url, status: @ccjob.status }
    end

    assert_redirected_to ccjob_path(assigns(:ccjob))
  end

  test "should show ccjob" do
    get :show, id: @ccjob
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ccjob
    assert_response :success
  end

  test "should update ccjob" do
    put :update, id: @ccjob, ccjob: { input_bucket_url: @ccjob.input_bucket_url, job_file_url: @ccjob.job_file_url, name: @ccjob.name, output_bucket_url: @ccjob.output_bucket_url, status: @ccjob.status }
    assert_redirected_to ccjob_path(assigns(:ccjob))
  end

  test "should destroy ccjob" do
    assert_difference('Ccjob.count', -1) do
      delete :destroy, id: @ccjob
    end

    assert_redirected_to ccjobs_path
  end
end
