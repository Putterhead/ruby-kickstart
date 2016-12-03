# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares
# So, I'm thinking of mulitplying each element by itself and returning
# it to another array and comparing this to the original array - any 
# values that correspond can be kept in the array.
# def get_squares(array)
#   array.map { |i| i * i} << array2
#   # I now need part of the block to evaluate the new array for unique values
#   # and then throw them out and just return the values in common.
#   # unfortunately, << array2 is no being recognised 'undefined variable'
#   array.uniq.sort == array2.uniq.sort 
# end

# This is the solution, which now seems so logical, the array 'numbers' is
# being checked for values that include squared values (n*n) of the value
# at each index (|n|), which is then being sorted. 
# .select is a great way of doing it as it 'returns a new array containing
# all elements of ary for which the given block returns a true value.
def get_squares(numbers)
  numbers.select { |n| numbers.include? n*n }.sort
end
# def get_squares(array)
#   array.inject[:*]
# end