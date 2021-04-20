require 'rspec'
require './lib/item'

describe Item do
  describe '#new' do
    it 'creates new instance of Item' do
      item = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
      expect(item).to be_an Item
    end
  end
end
