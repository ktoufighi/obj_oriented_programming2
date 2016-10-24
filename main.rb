require_relative 'recipts'
require_relative 'item'


# item list 1
  book = Exempt.new('A Book', 12.49)
  music = Domestic.new('A Music CD', 14.99)
  chocolate = Imported.new('A Chocolate Bar', 0.85)

cart1_items = []
cart1_items << book << music << chocolate

# cart 1
cart1_item_numbers = [1, 1, 1]

# receipt 1
puts 'Here is your receipt, thank you for shopping.'
puts '+++++++++++++++++++++++++++++++++++++++++++++'
receipt1 = Receipt.new(cart1_items, cart1_item_numbers)
receipt1.list_of_items.each do |item|
  puts item.item
  puts item.price
end
puts "Cart 1 // sales taxes: #{receipt1.sales_tax.to_i}$ sub-total: #{receipt1.sub_total.to_i}$ "

#########

# item list 2
puts 'Here is your receipt, thank you for shopping.'
puts '+++++++++++++++++++++++++++++++++++++++++++++'
imported_chocolate = Imported.new('An imported box of chocolates', 10.00)
imported_perfume = Imported.new('An imported bottle of perfume', 47.50)

cart2_items = []
cart2_items << imported_chocolate << imported_perfume

# cart 2
cart2_item_numbers = [1, 1]

# receipt 2
receipt2 = Receipt.new(cart2_items, cart2_item_numbers)
receipt2.list_of_items.each do |item|
  puts item.item
  puts item.price
end
puts "Cart 2 // sales taxes: #{receipt2.sales_tax.to_i}$ sub-total: #{receipt2.sub_total.to_i}$"

#########

# item list 3
puts 'Here is your receipt, thank you for shopping.'
puts '+++++++++++++++++++++++++++++++++++++++++++++'
imported_perfume = Imported.new('imported bottle of perfume', 27.99)
perfume = Domestic.new('A bottle of perfume', 18.99)
pills = Exempt.new('A packet of headache pills', 9.75)
imported_chocolate = Imported.new('A box of imported chocolates', 11.25)

cart3_items = []
cart3_items << imported_perfume << perfume << pills << imported_chocolate

# cart 3
cart3_item_numbers = [1, 1, 1, 1]

# receipt 3
receipt3 = Receipt.new(cart3_items, cart3_item_numbers)
receipt3.list_of_items.each do |item|
  puts item.item
  puts item.price
end
puts "Cart 3 // sales taxes: #{receipt3.sales_tax.to_i}$ sub-total: #{receipt3.sub_total.to_i}$"




# imported_perfume.imported
# perfume.domestic
# medicine.exempted
# euro_chocolate.imported
