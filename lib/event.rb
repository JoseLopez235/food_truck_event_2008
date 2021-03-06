class Event
  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |food_truck|
      food_truck.inventory_item_names.include?(item.name)
    end
  end

  def total_inventory
    total_inventory = {}
    @food_trucks. each do |food_truck|
      food_truck.inventory.each do |item, quantity|
        if total_inventory[item].nil?
          total_inventory[item] = {quantity: quantity, food_trucks: [food_truck]}
        else
          total_inventory[item][:quantity] += quantity
          total_inventory[item][:food_trucks] << food_truck
        end
      end
    end
    total_inventory
  end

  def sorted_item_list
    item_list = []
    @food_trucks.each do |food_truck|
      item_list << food_truck.inventory_item_names
    end
    item_list = item_list.flatten!.uniq.sort
  end
end
