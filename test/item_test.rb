require "minitest/autorun"
require "minitest/pride"
require "./lib/item"

class ItemTest < Minitest::Test
  def test_should_exist
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    assert_instance_of Item, item1
  end

  def test_should_have_attributes
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    assert_equal 'Apple Pie (Slice)', item2.name
    assert_equal '$2.50', item2.price
  end
end
