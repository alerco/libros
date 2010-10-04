require 'test_helper'

class AlercosControllerTest < ActionController::TestCase
  setup do
    @alerco = alercos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alercos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alerco" do
    assert_difference('Alerco.count') do
      post :create, :alerco => @alerco.attributes
    end

    assert_redirected_to alerco_path(assigns(:alerco))
  end

  test "should show alerco" do
    get :show, :id => @alerco.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @alerco.to_param
    assert_response :success
  end

  test "should update alerco" do
    put :update, :id => @alerco.to_param, :alerco => @alerco.attributes
    assert_redirected_to alerco_path(assigns(:alerco))
  end

  test "should destroy alerco" do
    assert_difference('Alerco.count', -1) do
      delete :destroy, :id => @alerco.to_param
    end

    assert_redirected_to alercos_path
  end
end
