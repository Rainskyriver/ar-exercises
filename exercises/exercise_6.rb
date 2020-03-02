require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
Store.has_many :employees
Employee.belongs_to :Store

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

@store1.employees.create(
  first_name: "Bob",
  last_name: "Loblaw",
  hourly_rate: 500,
)
@store1.employees.create(
  first_name: "Hugh",
  last_name: "Mann",
  hourly_rate: 50,
)

@store2.employees.create(
  first_name: "Chester",
  last_name: "Sea",
  hourly_rate: 300,
)