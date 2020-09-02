class Transaction

  attr_reader :name, :item_name

  @@all = []

  def initialize(name, item_name)
    @name = name
    @item_name = item_name
    @@all << self
  end

  def self.all 
    @@all
  end


end
