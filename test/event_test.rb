require "minitest/autorun"
require "minitest/pride"
require "./lib/food_truck"
require "./lib/event"

class EventTest < Minitest::Test
  def test_should_exist
    event = Event.new("South Pearl Street Farmers Market")
    assert_instance_of Event, event
  end

  def test_should_have_attributes
    event = Event.new("South Pearl Street Farmers Market")
    assert_equal "South Pearl Street Farmers Market", food_truck.name
    assert_equal [], event.food_trucks
  end
end
