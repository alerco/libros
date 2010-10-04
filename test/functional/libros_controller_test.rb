require 'test_helper'

class LibrosControllerTest < ActionController::TestCase
  setup do
    @libro = libros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:libros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create libro" do
    assert_difference('Libro.count') do
      post :create, :libro => @libro.attributes
    end

    assert_redirected_to libro_path(assigns(:libro))
  end

  test "should show libro" do
    get :show, :id => @libro.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @libro.to_param
    assert_response :success
  end

  test "should update libro" do
    put :update, :id => @libro.to_param, :libro => @libro.attributes
    assert_redirected_to libro_path(assigns(:libro))
  end

  test "should destroy libro" do
    assert_difference('Libro.count', -1) do
      delete :destroy, :id => @libro.to_param
    end

    assert_redirected_to libros_path
  end
end
