require 'test_helper'

class UserInfosControllerTest < ActionController::TestCase
  setup do
    @user_info = user_infos(:one)
  end

  #test "should get index" do
   # get :index
    #assert_response :success
    #assert_not_nil assigns(:user_infos)
  #end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_info" do
    assert_difference('UserInfo.count') do
      post :create,:format => 'js', user_info: { dob: @user_info.dob, first_name: @user_info.first_name, gender: @user_info.gender, height: @user_info.height, last_name: @user_info.last_name, user_id: @user_info.user_id, weight: @user_info.weight }
    end
    assert_response :success
  end

  test "should not create user_info" do
    assert_no_difference('UserInfo.count') do
      put :create,:format => 'js', id: @user_info, user_info:{ :first_name => nil }
    end
    assert assigns(:user_info).errors.any?

  end

  test "should show user_info" do
    get :show, id: @user_info
    assert_response :success
  end

  #test "should view user_info" do
   # get :view, id: @user_info
    #assert_response :success
  #end

  test "should get edit" do
    get :edit, id: @user_info
    assert_response :success
  end

  #test "should update user_info" do
   # patch :update,:format => 'js', id: @user_info, user_info: { dob: @user_info.dob, first_name: @user_info.first_name, gender: @user_info.gender, height: @user_info.height, last_name: @user_info.last_name, user_id: @user_info.user_id, weight: @user_info.weight }
    #assert_redirected_to user_info_path(assigns(:user_info))
    #assert_response :success
  #end
  test "should not update user_info" do
    assert_no_difference('UserInfo.count') do
      put :update,:format => 'js', id: @user_info, user_info:{ :first_name => nil }
    end
    assert assigns(:user_info).errors.any?

  end

  test "should destroy user_info" do
    assert_difference('UserInfo.count', -1) do
      delete :destroy,:format => 'js', id: @user_info
    end

    #assert_redirected_to user_infos_path
  end


  #test "should not create user_info" do
   # assert_no_difference('UserInfo.count') do
    #  post :create,:format => 'js',id: @user_info, user_info: { first_name: => nil}
    #end
    #assert assigns(:user_info).errors.any?
  #end
end
