class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)
    @food_trucks << truck
  end

  def food_truck_names
    @food_trucks.collect(&:name)
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |truck|
      truck.inventory.include?(item)
    end
  end

  def potential_revenue
    @food_trucks.sum do |truck|
      sum = 0
      truck.inventory.each do |item, count|
        sum += item.price * count
      end
      sum
    end
  end
end
