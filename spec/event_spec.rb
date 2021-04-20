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
      execpted = [truck1, truck2]
      
      expect(event.food_trucks).to eq expected
    end
  end
end
