class Item
  attr_reader :name

  def initialize(attrs)
    @name = attrs[:name]
    @price = attrs[:price]
  end

  def price
    @price[1..-1].to_f
  end
end
