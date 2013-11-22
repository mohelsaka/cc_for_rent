require 'test_helper'

class PcOwnersControllerTest < ActionController::TestCase
  setup do
    @pc_owner = pc_owners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pc_owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pc_owner" do
    assert_difference('PcOwner.count') do
      post :create, pc_owner: { ip: @pc_owner.ip, name: @pc_owner.name, revenu: @pc_owner.revenu }
    end

    assert_redirected_to pc_owner_path(assigns(:pc_owner))
  end

  test "should show pc_owner" do
    get :show, id: @pc_owner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pc_owner
    assert_response :success
  end

  test "should update pc_owner" do
    put :update, id: @pc_owner, pc_owner: { ip: @pc_owner.ip, name: @pc_owner.name, revenu: @pc_owner.revenu }
    assert_redirected_to pc_owner_path(assigns(:pc_owner))
  end

  test "should destroy pc_owner" do
    assert_difference('PcOwner.count', -1) do
      delete :destroy, id: @pc_owner
    end

    assert_redirected_to pc_owners_path
  end
end
