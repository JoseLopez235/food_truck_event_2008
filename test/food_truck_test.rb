require "minitest/autorun"
require "minitest/pride"
require "./lib/food_truck"

class FoodTruckTest < Minitest::Test
  def test_should_exist
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    assert_instance_of FoodTruck, food_truck
  end

  def test_should_have_attributes
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    assert_equal "Rocky Mountain Pies", food_truck.name
    expect = {}
    assert_equal expect, food_truck.inventory
  end
end
