require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

  setup do
    @user = users(:one)
  end
  test "should get new" do
    get :new
    assert_response :success
  end

  #test "should create" do
   # get :create    id: @user
    #assert_respose :sucess
  #end

  #test "should not create" do
   # get :create    @user, user:{:email =>'blah',:password => 'blah'}
    #assert_redirect 'new'

  #end

end
