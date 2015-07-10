require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  #test "should create restaurant" do
   # assert_difference('Restaurant.count') do
    #  post :create, :format => 'js',restaurant: { restaurant_name: 'SpiceClub' }
    #end
    #assert_response :success
  #end

  test "should not create restaurant" do
    assert_no_difference('Restaurant.count') do
      put :create,:format => 'js', id: @restaurant, restaurant:{ :restaurant_name => nil }
    end
    assert assigns(:restaurant).errors.any?

  end


 test "should show restaurant" do
    get :show, id: @restaurant
    assert_response :success
  end

  #test "show by restaurant" do
   # post :search_by_restaurant,:format => 'js', :restaurant_name => 'Ihop'
    #assert_response :success
  #end

  #test "show work orders of work_status" do
   # post :search_by_restaurant,:format => 'js', :restaurant_name=> 'Diner'
    #assert_response :success
  #end


  test "should get edit" do
    get :edit, id: @restaurant
    assert_response :success
  end

  test "should update restaurant" do

    patch :update, :format => 'js',id: @restaurant, restaurant: { restaurant_name: @restaurant.restaurant_name }
    assert_equal 2,Restaurant.count
    assert_response :success
  end

  test "should not update restaurant" do
    assert_no_difference('UserInfo.count') do
      put :update,:format => 'js', id: @restaurant, restaurant:{ :restaurant_name => nil }
    end
    assert assigns(:restaurant).errors.any?

  end
  #test "should destroy restaurant" do
   # assert_difference('Restaurant.count', -1) do
    #  delete :destroy, id: @restaurant, restaurant:{ :id =>'298486374'}
    #end

    #assert_redirected_to restaurants_path
  #end
end
