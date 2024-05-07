require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# Calculate and output the total revenue of all stores
total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue: #{total_revenue}"

# Calculate and output the average annual revenue of all stores
average_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue: #{average_revenue.round(2)}"

# Count and output the number of stores generating $1M or more in annual sales
million_plus_stores_count = Store.where('annual_revenue >= ?', 1000000).count
puts "Number of stores generating $1M or more in annual sales: #{million_plus_stores_count}"
