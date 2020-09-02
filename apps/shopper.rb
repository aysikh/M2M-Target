require 'pry'
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

  def cart_item #anney.single_item ==== giftcard, wine etc
    cart = []
    Transaction.all.find_all do |single_transaction| 
      # binding.pry
      if single_transaction.name.name == self.name
        cart << single_transaction.item_name
        # binding.pry
      end
    end
    cart
  end

  def cart_total #total amount the shopper spent #anney.cart_total ===== 
    # go thru all instances of transactions,
    #  does SELF.name knows it's transactions?
    # if it does, 
  end

  def self.exceeded_budget
  end

  def self.remaining_amount
  end

end0