# Prompt the user for a number, then read it in and print out "hi" that many times
# 
# Repeat this process until the user submits "bye", then say "goodbye" and end the program
# HINT: Check out example 2 if you get stuck

# example:
# PROGRAM: Enter a number
# USER:    4
# PROGRAM: hi hi hi hi
# PROGRAM: Enter a number
# USER:    2
# PROGRAM: hi hi
# PROGRAM: Enter a number
# USER:    bye
# PROGRAM: goodbye


# remember you can try your program out with              $ ruby 2_input_output_control.rb
# and when you think it is correct, you can test it with  $ rake 2:2
# This was my attempt at the solution,
# def hi_hi_goodbye
#   puts "Enter a number"
#   number = gets.chomp
#   print "hi " x number
  
#   # your code here
# end

# Here's the solution, though I'm not sure having a method 'prompt' is really necessary
# instead of 'line' you could just have the variable 'number' (from my solution)
def prompt
  puts 'Enter a number or bye'
end

def hi_hi_goodbye
  prompt # the method prompt is called, which displays the string 'Enter a number or bye'
  while (line = gets) && (line !~ /bye/) # first is an assignment statement that returns a line or nil, and is thus boolean
    # so if you enter in a number other than bye it will carry out the rest of the block
    line.to_i.times { print 'hi ' } # returning 'line' as an integer x amount of times
    puts        # it then returns the puts 'Enter a number or bye' again
    prompt
  end
  puts "Goodbye!" # if you enter bye it will return "Goodbye!"
end



# This will just invoke the method if you run this program directly
# This way you can try it out by running "$ ruby 2_input_output_control.rb" 
# but it will still work for our tests
hi_hi_goodbye if $0 == __FILE__