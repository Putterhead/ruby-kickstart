# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

# This is my solution with which I'm being returned the error,
# NoMethodError:
       # undefined method `each_index' for "":String
# class String
#   def every_other_char
#     string = ''
#     string.map(string.each_index.select { |i| i.odd?})
#     string 
#   end
# end

class String
  def every_other_char
    to_return = ''
    each_char.with_index do |char, index|
      to_return << char if index.even?
    end
    to_return
  end
end
