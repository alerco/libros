require 'test_helper'

class Modelo1sControllerTest < ActionController::TestCase
  setup do
    @modelo1 = modelo1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modelo1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modelo1" do
    assert_difference('Modelo1.count') do
      post :create, :modelo1 => @modelo1.attributes
    end

    assert_redirected_to modelo1_path(assigns(:modelo1))
  end

  test "should show modelo1" do
    get :show, :id => @modelo1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @modelo1.to_param
    assert_response :success
  end

  test "should update modelo1" do
    put :update, :id => @modelo1.to_param, :modelo1 => @modelo1.attributes
    assert_redirected_to modelo1_path(assigns(:modelo1))
  end

  test "should destroy modelo1" do
    assert_difference('Modelo1.count', -1) do
      delete :destroy, :id => @modelo1.to_param
    end

    assert_redirected_to modelo1s_path
  end
end
