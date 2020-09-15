require "minitest/autorun"
require "minitest/pride"
require "./lib/food_truck"
require "./lib/item"

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

  def test_check_stock
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    assert_equal 0, food_truck.check_stock(item1)
  end

  def test_stock
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    food_truck.stock(item1, 30)
    expect = {item1 => 30}
    assert_equal expect, food_truck.inventory
    assert_equal 30, food_truck.check_stock(item1)
    food_truck.stock(item1, 25)
    assert_equal 55, food_truck.check_stock(item1)
    food_truck.stock(item2, 12)
    expect = {item1 => 55, item2 => 12}
    assert_equal expect, food_truck.inventory
  end
end
