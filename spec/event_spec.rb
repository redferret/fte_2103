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
end
