require 'test_helper'

class OceansControllerTest < ActionController::TestCase
  setup do
    @ocean = oceans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oceans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ocean" do
    assert_difference('Ocean.count') do
      post :create, :ocean => @ocean.attributes
    end

    assert_redirected_to ocean_path(assigns(:ocean))
  end

  test "should show ocean" do
    get :show, :id => @ocean.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ocean.to_param
    assert_response :success
  end

  test "should update ocean" do
    put :update, :id => @ocean.to_param, :ocean => @ocean.attributes
    assert_redirected_to ocean_path(assigns(:ocean))
  end

  test "should destroy ocean" do
    assert_difference('Ocean.count', -1) do
      delete :destroy, :id => @ocean.to_param
    end

    assert_redirected_to oceans_path
  end
end
