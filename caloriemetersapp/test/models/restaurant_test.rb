require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @restaurant = Restaurant.new(
        :restaurant_name=>'ihop')
  end
  test "create restaurant" do
    assert Restaurant.create(
               :restaurant_name=>'diner' )
  end


  test "search for restaurant" do
    assert_equal 1, Restaurant.search('298486374').count
  end
end
