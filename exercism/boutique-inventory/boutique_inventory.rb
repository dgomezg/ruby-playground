class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map {|inventory| inventory[:name]}.sort
  end

  def cheap
    @items.select {|inventory| inventory[:price] < 30}
  end

  def out_of_stock
    @items.select {|inventory| inventory[:quantity_by_size].empty?}
  end

  def stock_for_item(name)
    @items.select {|inventory| inventory[:name] == name}[0][:quantity_by_size]

  end

  def total_stock
    @items.map {|inventory|
      inventory[:quantity_by_size].map{|_,stock|
        stock
      }.sum
    }.sum
  end

  private
  attr_reader :items
end
