require 'test_helper'

class FacesControllerTest < ActionController::TestCase
  setup do
    @face = faces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:faces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create face" do
    assert_difference('Face.count') do
      post :create, :face => @face.attributes
    end

    assert_redirected_to face_path(assigns(:face))
  end

  test "should show face" do
    get :show, :id => @face.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @face.to_param
    assert_response :success
  end

  test "should update face" do
    put :update, :id => @face.to_param, :face => @face.attributes
    assert_redirected_to face_path(assigns(:face))
  end

  test "should destroy face" do
    assert_difference('Face.count', -1) do
      delete :destroy, :id => @face.to_param
    end

    assert_redirected_to faces_path
  end
end
