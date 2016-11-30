# A grad student at a local university thinks he has discovered a formula to
# predict what kind of grades a person will get. He says if you own less than 
# 10 books, you will get a "D". If you own 10 to 20 books, you will get a "C", 
# and if you own more than 20 books, you will get a "B".
# He further hypothesizes that if you actually read your books, then you will
# get a full letter grade higher in every case.
#
# grade(4,  false)  # => "D"
# grade(4,  true)   # => "C"
# grade(15, true)   # => "B"

def grade(num_books, reads_books)
  #grade = ["A", "B", "C", "D"]
  if reads_books
    return "C" if num_books < 10
    return "B" if num_books <= 20
    return "A"
  else 
    return "D" if num_books < 10
    return "C" if num_books <= 20
    return "B"
  end 
  # num_books == 0 ? "D"
  # num_books < 10 ? "D" : "C"
  # num_books <= 20 ? "C" : "B"
  #   "C" if reads_books < 10
  #   "B" if reads_books <= 20
  #   "A"
  # else
  #   "D" if num_books < 10
  #   "C" if num_books <= 20
  #   "B"
  # end
  #num_books < 10 && reads_books == num_books ? "C" : "D"
    #"D"
  # num_books >= 10 && num_books <=20 && reads_books == num_books ? "B" : "C"
  # #elsif num_books >= 10 && num_books <= 20
  #   #"C"
  # num_books > 20 && reads_books == num_books ? "A" : "B"
  # num_books == 0 ? "D" : "D"
  #elsif num_books > 20
    #"B"
  #num_books >= 10 < 20 : "C"
  #num_books > 20 ? : "B" : grade[-1]
  #end
end

# array = [1,5,7]
# array.find { |number| number * 2 == 10 } # => 5
# array.find { |number| number * 2 == 11 } # => nil