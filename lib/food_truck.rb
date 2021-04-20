class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    @inventory[item].to_i
  end

  def stock(item, count)
    @inventory[item] = count
  end

end
