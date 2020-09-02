require 'pry'

class TargetItem

  attr_reader :item_name, :price

  @@all = []

  def initialize(item_name, price)
    @item_name = item_name
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total #total price of all items in target
    total_cost = 0.0
    self.all.select do |item|
      # binding.pry
      total_cost += item.price 
    end
    total_cost
  end

  def over_100? #is this target item over 100?
    self.price >= 100.0
  end

  def below_50?
    self.price <= 50.0
  end

  def self.search_by_name(brand) # WHY ISN'T THIS AN ARRAY!!!!!!! :( 
    results_array = []
    # binding.pry
    results = self.all.find_all do |item| 
      item.item_name.include?(brand)
    end
    results_array << results.map {|item| item.item_name}
  end

end