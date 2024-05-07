require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# Load the third store by ID
@store3 = Store.find(3)

# Delete the store from the database
@store3.destroy

# Verify the deletion by outputting the current count of stores
puts Store.count
