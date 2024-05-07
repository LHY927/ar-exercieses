require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ApplicationRecord
    belongs_to :store
  
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
    validates :store_id, presence: true
  end

  class Store < ApplicationRecord
    has_many :employees
  
    validates :name, presence: true, length: { minimum: 3 }
    validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validate :must_carry_at_least_one_apparel_type
  
    private
  
    def must_carry_at_least_one_apparel_type
      unless mens_apparel || womens_apparel
        errors.add(:base, 'Stores must carry at least one type of apparel (mens or womens)')
      end
    end
  end
  
  # Start the Rails console
# Execute this script inside the Rails console

puts "Please enter a store name:"
store_name = gets.chomp

new_store = Store.new(name: store_name)

if new_store.save
  puts "Store created successfully!"
else
  puts "Error: Could not create the store. Please review the following errors:"
  new_store.errors.full_messages.each do |message|
    puts message
  end
end
