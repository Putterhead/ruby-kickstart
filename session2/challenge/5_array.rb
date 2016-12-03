# Write a function named mod_three which takes an array of numbers, 
# and return a new array consisting of their remainder when divided by three.
# Exclude any numbers which are actually dividible by three.
# 
# EXAMPLES:
# mod_three [0]  # => []
# mod_three [1]  # => [1]
# mod_three [2]  # => [2]
# mod_three [3]  # => []
# mod_three [4]  # => [1]
# mod_three [5]  # => [2]
# mod_three [6]  # => []
# mod_three [7]  # => [1]
#
# mod_three [0,1,2,3,4,5,6,7] # => [1, 2, 1, 2, 1]
# So something like if number % 3 == 0 ? exclude : number % 3
# With numbers.map { |n| numbers.include? n % 3 == 0 } it just
# returns an array with 'false' for each value given
# def mod_three(numbers)
#   numbers.map { |n| numbers n % 3 == 0 }
# end

# Here's the solution and I hadn't thought of using !=. Its clear
# to me now that .select is returning a new array with the numbers
# that to not return true when evaluated for 'number % 3 !=0' and 
# then using .map a new array is again return with the remainder 
# value using the block '|number| number % 3'
def mod_three(numbers)
  numbers.select { |number| number % 3 != 0 }.map { |number| number % 3 }
end