require 'test_helper'

class UserCaloriesDataControllerTest < ActionController::TestCase
  setup do
    @user_calories_datum = user_calories_data(:one)
    @user_info = user_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_calories_data)
  end

  #test "should track" do
   # get :track , :user_info_id =>'1'
    #assert_response :success
    #assert_not_nil assigns(:user_calories_data)
  #end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_calories_datum" do
    assert_difference('UserCaloriesDatum.count') do
      post :create,:format => 'js', user_calories_datum: { consumed_calories: @user_calories_datum.consumed_calories, date_tracked: @user_calories_datum.date_tracked, target: @user_calories_datum.target, user_info_id: @user_calories_datum.user_info_id }
    end

    assert_response :success
  end

  test "should not create user_calories_datum" do
    assert_no_difference('UserCaloriesDatum.count') do
      put :create,:format => 'js', id: @user_calories_datum, user_calories_datum:{ :consumed_calories => nil }
    end
    assert assigns(:user_calories_datum).errors.any?

  end

  test "should show user_calories_datum" do
    get :show, id: @user_calories_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_calories_datum
    assert_response :success
  end

  test "should update user_calories_datum" do
    patch :update,:format => 'js', id: @user_calories_datum, user_calories_datum: { consumed_calories: @user_calories_datum.consumed_calories, date_tracked: @user_calories_datum.date_tracked, target: @user_calories_datum.target, user_info_id: @user_calories_datum.user_info_id }
    #assert_redirected_to user_calories_datum_path(assigns(:user_calories_datum))
    assert_response :success
  end

  test "should not update user_calories_datum" do
    assert_no_difference('UserCaloriesDatum.count') do
      put :update,:format => 'js', id: @user_calories_datum, user_calories_datum:{ :consumed_calories => nil }
    end
    assert assigns(:user_calories_datum).errors.any?

  end

  test "should destroy user_calories_datum" do
    assert_difference('UserCaloriesDatum.count', -1) do
      delete :destroy,:format => 'js', id: @user_calories_datum
    end

  end
end
