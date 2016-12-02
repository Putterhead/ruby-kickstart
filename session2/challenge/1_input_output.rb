# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
# 
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

# This was my solution before I consulted 'solved'. I am getting the 
# error 'undefined method `-' for "9\n":String', which I think is 
# referring to the output code on line 21.
# def sum_difference_product
#   puts "Enter integer no.1"
#   integer1 = gets.to_i
#   puts "Enter integer no.2"
#   integer2 = gets.to_i
#   integer_sum = integer1 + integer2
#   integer_diff = integer1 - integer2
#   integer_prod = integer1 * integer2
#   puts "#{integer_sum}\\n#{integer_diff}\\n#{integer_prod}"
#   # your code goes here
# end
# This is the solution and viewing this I realise I didnt need an
# input for each integer. I'm still getting to grips with converting
# strings to arrays and then iterating over them... 
def sum_difference_product
  a , b = gets.split.map { |num| num.to_i }
  puts a + b
  puts a - b
  puts a * b
end

# spent again way too much time on this, going to speed things up now
# integer_sum = 9 + 2
# integer_diff = 9 - 2
# integer_prod = 9 * 2
# puts "#{integer_sum}\n#{integer_diff}\n#{integer_prod}"