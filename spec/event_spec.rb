require 'rspec'
require './lib/event'

describe Event do
  describe '#new' do
    it 'creates new Event' do
      event = Event.new('Name of event')
      expect(event).to be_an Event
    end

    it 'has a name' do
      event = Event.new('Name of event')
      expect(event.name).to eq 'Name of event'
    end

    it 'has food trucks' do
      event = Event.new('Name of event')
      expect(event.food_trucks).to eq []
    end
  end

  describe '#add_food_truck' do
    it 'adds a food truck' do
      event = Event.new('Name of event')

      truck1 = instance_double('Truck')
      truck2 = instance_double('Truck')

      event.add_food_truck(truck1)
      event.add_food_truck(truck2)
      expected = [truck1, truck2]

      expect(event.food_trucks).to eq expected
    end
  end

  describe '#food_truck_names' do
    it 'lists out all names of trucks' do
      event = Event.new('Name of event')

      truck1 = instance_double('Truck', name: 'Truck1')
      truck2 = instance_double('Truck', name: 'Truck2')

      event.add_food_truck(truck1)
      event.add_food_truck(truck2)

      expected = ['Truck1', 'Truck2']

      expect(event.food_truck_names).to eq expected
    end
  end

  describe '#potential_revenue' do
    it 'returns the items price * quantity for all trucks' do
      event = Event.new('Name of event')

      item1 = instance_double('Item', price:12)
      item2 = instance_double('Item', price:10)
      item3 = instance_double('Item', price:5)
      item4 = instance_double('Item', price:2)

      inv1 = {
        item1 => 3,
        item2 => 4,
        item3 => 2
      }

      inv2 = {
        item3 => 4,
        item4 => 5
      }

      truck1 = instance_double('Truck', inventory: inv1)
      truck2 = instance_double('Truck', inventory: inv2)

      event.add_food_truck(truck1)
      event.add_food_truck(truck2)

      expect(event.potential_revenue).to eq 116.0
    end
  end

  describe '#food_trucks_that_sell' do
    it 'lists out all items of truck given the item' do
      event = Event.new('Name of event')

      item1 = instance_double('Item')
      item2 = instance_double('Item')
      item3 = instance_double('Item')
      item4 = instance_double('Item')

      inv1 = {
        item1 => 10,
        item2 => 5,
        item3 => 7
      }

      inv2 = {
        item3 => 12,
        item4 => 6
      }

      inv3 = {
        item4 => 10
      }

      truck1 = instance_double('Truck', inventory: inv1)
      truck2 = instance_double('Truck', inventory: inv2)
      truck3 = instance_double('Truck', inventory: inv3)

      event.add_food_truck(truck1)
      event.add_food_truck(truck2)
      event.add_food_truck(truck3)

      expected = [truck1, truck2]
      actual = event.food_trucks_that_sell(item3)

      expect(actual).to eq expected
    end
  end
end
