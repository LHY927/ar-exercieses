require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# Ensure that @store1 and @store2 are loaded or defined
@store1 = Store.find(1) # Assuming @store1 is Burnaby
@store2 = Store.find(2) # Assuming @store2 is Richmond

# Create employees for @store1 (Burnaby)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Alice", last_name: "Smith", hourly_rate: 55)
@store1.employees.create(first_name: "Bob", last_name: "Johnson", hourly_rate: 50)

# Create employees for @store2 (Richmond)
@store2.employees.create(first_name: "Carol", last_name: "Taylor", hourly_rate: 58)
@store2.employees.create(first_name: "Dave", last_name: "Brown", hourly_rate: 53)

# Verify the creation of employees by outputting their details
puts "Employees at Store 1 (Burnaby):"
@store1.employees.each do |employee|
  puts "#{employee.first_name} #{employee.last_name} - Hourly Rate: #{employee.hourly_rate}"
end

puts "Employees at Store 2 (Richmond):"
@store2.employees.each do |employee|
  puts "#{employee.first_name} #{employee.last_name} - Hourly Rate: #{employee.hourly_rate}"
end
