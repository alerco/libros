require 'test_helper'

class PeliculasControllerTest < ActionController::TestCase
  setup do
    @pelicula = peliculas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peliculas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pelicula" do
    assert_difference('Pelicula.count') do
      post :create, :pelicula => @pelicula.attributes
    end

    assert_redirected_to pelicula_path(assigns(:pelicula))
  end

  test "should show pelicula" do
    get :show, :id => @pelicula.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pelicula.to_param
    assert_response :success
  end

  test "should update pelicula" do
    put :update, :id => @pelicula.to_param, :pelicula => @pelicula.attributes
    assert_redirected_to pelicula_path(assigns(:pelicula))
  end

  test "should destroy pelicula" do
    assert_difference('Pelicula.count', -1) do
      delete :destroy, :id => @pelicula.to_param
    end

    assert_redirected_to peliculas_path
  end
end
