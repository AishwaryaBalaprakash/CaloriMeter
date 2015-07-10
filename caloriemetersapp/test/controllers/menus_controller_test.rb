require 'test_helper'

class MenusControllerTest < ActionController::TestCase
  setup do
    @menu = menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu" do
    assert_difference('Menu.count') do
      post :create,:format => 'js', menu: { calories: @menu.calories, menu_item: @menu.menu_item, restaurant_id: @menu.restaurant_id, serving_id: @menu.serving_id }
    end
    assert_response :success
  end

 # test "should not create menu" do
  #  assert_no_difference('Menu.count') do
   #   put :create,:format => 'js', id: @menu, menu:{ :menu_item => nil }
   # end
    #assert assigns(:menu).errors.any?

  #end
  test "should show menu" do
    get :show, id: @menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu
    assert_response :success
  end

  test "should update menu" do
    patch :update, :format => 'js',id: @menu, menu: { calories: @menu.calories, menu_item: @menu.menu_item, restaurant_id: @menu.restaurant_id, serving_id: @menu.serving_id }
    assert_response :success
  end

  #test "should not update menu" do
   # assert_no_difference('Menu.count') do
    #   put :update, :format => 'js',id: @menu, menu:{ :menu_item => nil }
   #end
  #assert assigns(:menu).errors.any?
  #end

  test "should destroy menu" do
    assert_difference('Menu.count', -1) do
      delete :destroy, id: @menu
    end

  end
end
