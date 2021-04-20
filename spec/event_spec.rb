require 'rspec'
require './lib/event'

describe Event do
  describe '#new' do
    it 'creates new Event' do
      event = Event.new('Name of event')
      expect(event).to be_an Event
    end
  end
end
