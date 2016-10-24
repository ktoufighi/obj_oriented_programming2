class Receipt

  attr_accessor :list_of_numbers, :list_of_items

  def initialize(list_of_items, list_of_numbers)
      @list_of_items = list_of_items
      @list_of_numbers = list_of_numbers
  end

  def sub_total
    total = 0
    for i in 1 do |@list_of_items.length|
      item = list_of_items[i]
      number = list_of_numbers[i]
      total += item.price * number
    end
  end

  def sales_tax
    tax_total = 0
    for i in 1 do |@list_of_items.length|
      item = list_of_items[i]
      number = list_of_numbers[i]
      tax_total += item.get_tax * number
    end
  end

end




  # class shopping_cart < Item
  #   def domestic
  #       "#{@item}, #{@sales_tax} applied sales taxes, came to #{@sub_total} in total taxes."
  #   end
  #
  #   def imported
  #       "#{@number} of #{@item} at #{@price}.to _i * (0.1 + 0.05)"
  #   end
  #
  #   def exempted
  #     "#{@number} of #{@item} at #{@price}.to_i"
  #   end
  # end

  # def taxes
  #   @@taxes
  # end
  #
  # def total
  #   @@total
  # end
