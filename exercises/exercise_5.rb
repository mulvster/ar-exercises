require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

#total revenue
@total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue: #{@total_revenue}"

# Output the average revenue
@average_revenue = @total_revenue / Store.count
puts "Average Revenue: #{@average_revenue}"

@money_making_stores = Store.where('annual_revenue >= 1000000').count
puts "Store Count (Over $1M Revenue): #{@money_making_stores}"