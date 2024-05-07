require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Create additional stores
Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Output each men's store's name and annual revenue
@mens_stores.each do |store|
  puts "#{store.name} - Annual Revenue: #{store.annual_revenue}"
end

# Fetch stores that carry women's apparel and have less than $1M in annual revenue
@womens_stores_under_1M = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)

# Optionally, to display these women's apparel stores:
@womens_stores_under_1M.each do |store|
  puts "#{store.name} - Annual Revenue: #{store.annual_revenue}"
end
