class Item

  attr_accessor :item, :price

  def initialize(item, price)
    @item = item
    @price = price
  end

class Imported < Item
  def get_tax
    tax = (@price * 0.15).round(2)
    return tax
  end
end

class Domestic < Item
  def get_tax
    tax = (@price * 0.1).round(2)
    return tax
  end
end

class Exempt < Item
  def get_tax
    tax = @price * 0
    return tax
  end
end

end
