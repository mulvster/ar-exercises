require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store ActiveRecord::Base
  has_many :employees
end

class Employee ActiveRecord::Base
  belongs_to :store
end

@store4 = Store.find(4)

@store1.employees.create(first_name: 'Khurram', last_name: 'Virani', hourly_rate: 60)
@store2.employees.create(first_name: 'April', last_name: 'Mulvey', hourly_rate: 80)
@store2.employees.create(first_name: 'Merlin', last_name: 'Wizard', hourly_rate: 40)
@store3.employees.create(first_name: 'Joe', last_name: 'Digliani', hourly_rate: 60)
@store4.employees.create(first_name: 'Guy', last_name: 'Ritchie', hourly_rate: 20)


