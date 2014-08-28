
#Homework Question 1
#----------------------------------------------------------------
require 'csv'

customer_company_name = Array.new

#CSV.parse(File.read('sample.csv')) do |row|
CSV.foreach('sample.csv') do |row|
	customer_company_name << row[2]
end

puts customer_company_name.uniq

#Homework Question 2
#----------------------------------------------------------------
require 'csv'

transaction_charge = Array.new

CSV.foreach('sample.csv', converters: :numeric) do |row|
	transaction_charge << row [21].to_i
	
end
puts transaction_charge.inject{|sum,x| sum + x }

#Homework Manipulate a Hash with nested Arrays
#----------------------------------------------------------------

h = {'car' => 'camry', 'van' => 'astro', 'truck' => 'F150'}


puts h[2]
puts h['car']
puts h


