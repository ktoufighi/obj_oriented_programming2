class Receipt
  attr_accessor :list_of_numbers, :list_of_items

  def initialize(list_of_items, list_of_numbers)
    @list_of_items = list_of_items
    @list_of_numbers = list_of_numbers
  end

  def sub_total
    total = 0
    @list_of_items.each_with_index do |item, i|
      number = @list_of_numbers[i]
      total += item.price * number
    end
    return total
  end

  def sales_tax
    tax_total = 0
    @list_of_items.each_with_index do |item, i|
      number = @list_of_numbers[i]
      tax_total += item.get_tax * number
    end
    return tax_total
  end
end
