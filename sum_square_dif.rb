# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_square_diff
  sum = []
  square = []
  answer = 0
  (1..100).each do |number|
    sum << (number * number)
    square << number
  end
  answer = square.reduce(:+)
  answer = (answer * answer) - sum.reduce(:+)
  return answer
end

sum_square_diff # returns correct value of 25164150
