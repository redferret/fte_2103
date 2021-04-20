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
  end
end
