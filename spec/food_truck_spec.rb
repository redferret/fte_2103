require 'rspec'
require './lib/food_truck'

describe FoodTruck do
  describe '#new' do
    it 'creates an instance of FoodTruck' do
      food_truck = FoodTruck.new('Food Truck')
      expect(food_truck).to be_a FoodTruck
    end

    it 'has a name' do
      food_truck = FoodTruck.new('Food Truck')
      expect(food_truck.name).to eq 'Food Truck'
    end

    it 'has an empty inventory' do
      food_truck = FoodTruck.new('Food Truck')
      expect(food_truck.inventory).to eq []
    end
  end

  describe '#check_stock' do
    it 'checks the inventory for an item returns how many' do
      food_truck = FoodTruck.new('Food Truck')
      item1 = instance_double('Item')
      expect(food_truck.check_stock(item1)). to eq 0
    end
  end

  describe '#stock' do
    it 'add an item with a quanity' do
      food_truck = FoodTruck.new('Food Truck')
      item1 = instance_double('Item')

      expected = {
        item1: 30
      }

      food_truck.stock(item1, 30)

      expect(food_truck.inventory). to eq expected
    end
  end
end
