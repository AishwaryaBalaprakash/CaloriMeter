require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  #test "should create user" do
   # assert_difference('User.count') do
    #  post :create, user: { email: @user.email, password_hash: @user.password_hash, password_salt: @user.password_salt }
    #end

    #assert_equal "Signed up!", flash[:notice]
    #assert_response :success
  #end

  test "should not create user" do
    post :create, user: { :email => nil }
    assert_response :success
    assert_template 'new'
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  #test "should update user" do
   # patch :update, id: @user, user: { email: @user.email, password_hash: @user.password_hash, password_salt: @user.password_salt }
    #assert_equal "User was successfully updated.", flash[:notice]
    #assert_response :success
  #end

  #test "should not update user " do

   # assert_no_difference('User.count') do
    #  put :update, id: @user, user:{ :email => nil }
    #end
    #assert assigns(:user).errors.any?
     # end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
