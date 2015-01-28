#factorial

#recursive
# def factorial(number)
#   return number if number <= 1
#   number * (factorial(number-1))
# end

#iterative
# def factorial(number)
#   return number if number <= 0
#   (1..number).inject(:*)
# end

def factorial(number)
  return number if number <= 1
  factorial = 1
  until number <= 1
    factorial *= number
    number -= 1
  end
  factorial
end



p factorial(0) == 0
p factorial(1) == 1
p factorial(2) == 2
p factorial(3) == 6
p factorial(4) == 24
p factorial(10) == 3628800
