require 'pry'
require_relative './shopper'
require_relative './targetitem'
require_relative './transaction'


anney = Shopper.new("Anney", 175)
amy = Shopper.new("Amy", 130)
matteo = Shopper.new("Matteo", 50)

banana = TargetItem.new("Banana", 1.50)
gum = TargetItem.new("Gum", 0.50)
bread = TargetItem.new("White Bread", 3.00)
chair = TargetItem.new("Chair", 60)
sneakers = TargetItem.new("Sneakers", 29.90)
tv = TargetItem.new("4k Samsung TV", 350.50)
giftcard = TargetItem.new("Target Gift Card", 25)
blanket = TargetItem.new("Magnolia Blanket", 22.80)
candle = TargetItem.new("Magnolia Candle", 6.20)
wine = TargetItem.new("White Wine", 15.25)
beer = TargetItem.new("Beer", 12.95)
couch = TargetItem.new("White Couch", 250)

Transaction.new(anney, giftcard)
Transaction.new(anney, wine)
Transaction.new(anney, sneakers)
Transaction.new(anney, chair)
Transaction.new(anney, couch)

Transaction.new(amy, gum)
Transaction.new(amy, blanket)
Transaction.new(amy, candle)
Transaction.new(amy, beer)

Transaction.new(matteo, tv)
Transaction.new(matteo, beer)


# puts "Does a shopper know its name?"
# puts anney.name == "Anney"
# puts amy.name == "Amy"

# puts "Does a shopper know how much is in their wallet?"
# puts anney.wallet == 175
# puts amy.wallet == 130

# puts "Shopper.all returns all shoppers?"
# puts Shopper.all

# puts "Does a target item know its name?"
# puts beer.name == "Beer"
# puts candle.name == "Magnolia Candle"

# puts "Does a target item know its price?"
# puts beer.price == 12.95
# puts candle.price == 6.20

# puts "target.all returns all items?"
# puts TargetItem.all

# puts "TargetItems know the total costs of all items?"

# puts TargetItem.total

# puts tv.over_100?
# puts TargetItem.search_by_name("Candle")

# puts TargetItem.search_by_name("White")

puts "Does the shopper know what they purchased?"
puts anney.items_purchased

# binding.pry