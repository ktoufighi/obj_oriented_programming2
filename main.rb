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
receipt1 = Receipt.new(cart1_items, cart1_item_numbers)
puts "The total of this receipt is #{receipt1.total}.to_i + #{receipt1.tax_total}.to_i"

#########

# item list 2
imported_chocolate = Imported.new('imported box of chocolates', 10.00)
imported_perfume = Imported.new('imported bottle of perfume', 47.50)

chart2_items = []
chart2_items << imported_chocolate << imported_perfume

# cart 2
cart2_item_numbers = [1, 1]

# receipt 2
receipt2 = Receipt.new(chart2_items, chart2_item_numbers)
puts "The total of this receipt is #{receipt2.total}.to_i + #{receipt2.tax_total}.to_i"

#########

# item list 3
imported_perfume = Imported.new('imported bottle of perfume', 27.99)
perfume = Domestic.new('bottle of perfume', 18.99)
pills = Exempt.new('packet of headache pills', 9.75)
imported_chocolate = Imported.new('box of imported chocolates', 11.25)

chart3_items = []
chart3_items << imported_perfume << perfume << pills << imported_chocolate

# cart 3
cart3_item_numbers = [1, 1, 1, 1]

# receipt 3
receipt3 = Receipt.new(cart3_items, cart3_item_numbers)
puts "The total of this receipt is #{receipt3.total}.to_i + #{receipt3.tax_total}.to_i"




# imported_perfume.imported
# perfume.domestic
# medicine.exempted
# euro_chocolate.imported
