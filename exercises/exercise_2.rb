require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# Load the first store by ID
@store1 = Store.find(1)

# Load the second store by ID
@store2 = Store.find(2)

# Update the first store's name and save the change
@store1.update(name: 'New Burnaby')

# Optionally, print to verify
puts @store1.name
puts @store2.name