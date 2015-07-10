require 'test_helper'

class ServingsControllerTest < ActionController::TestCase
  setup do
    @serving = servings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end
  test "should show serving" do
    get :show, id: @serving
    assert_response :success
  end

=begin  test "should create serving" do
    assert_difference('Serving.count') do
      post :create, serving: { serving_size: @serving.serving_size }
    end

    assert_redirected_to serving_path(assigns(:serving))
  end

  test "should not create serving" do
    assert_no_difference('Serving.count') do
      post :create, serving: { :serving_size =>nil }
      #assert_response :success
      assert_template 'edit'
    end

    assert_redirected_to serving_path(assigns(:serving))
  end



  test "should get edit" do
    get :edit, id: @serving
    assert_response :success
  end

  test "should update serving" do
    patch :update, id: @serving, serving: { serving_size: @serving.serving_size }
    assert_redirected_to serving_path(assigns(:serving))
  end

  test "should destroy serving" do
    assert_difference('Serving.count', -1) do
      delete :destroy, id: @serving
    end

    assert_redirected_to servings_path
  end
=end
end
