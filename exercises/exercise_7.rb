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
Employee.validates :first_name, presence: true
Employee.validates :last_name, presence: true
Employee.validates :hourly_rate, numericality: {greater_than: 40, less_than: 200}, presence: true
Employee.validates :belongs_to, presence: true

Store.validates :name, length: {minimum: 3}
Store.validates :annual_revenue, numericality: {greater_than: 0}

puts "Please enter a store name"
store_name = gets.chomp
puts Store.create(name: store_name).errors.full_messages
# puts Store.errors.full_messages