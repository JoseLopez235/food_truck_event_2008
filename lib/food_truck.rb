class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    return 0 if @inventory[item].nil?
    @inventory[item]
  end

  def stock(item, quantity)
    if @inventory[item].nil?
      @inventory[item] = quantity
    else
      @inventory[item] += quantity
    end
  end

  def inventory_item_names
    @inventory.map do |key, value|
      key.name
    end
  end

  def potential_revenue
    revenue = 0
    @inventory.each do |item, quantity|
      revenue += (item.price.delete("$").to_f * quantity)
    end
    revenue
  end
end
