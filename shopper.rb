class Shopper

  attr_reader :name, :wallet

  @@all = []

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @@all << self
  end

  def self.all
    @@all
  end

  # def items_purchased #amy.items purchased = gum, blanket, candle, beer
  #   items = []
  #   Transaction.all.select do |one_purchase|
  #     one_purchase.name.name == self.name
  #       items << one_purchase.item_name.item_name
  #   end
  #   return items
  # end

  def total_spent
    
  end

  def self.exceeded_budget
  end

  def self.remaining_amount
  end

end