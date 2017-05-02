# Takes a collection of integers and finds the product of 3 integers with the highest value

def product_three(array)
  hash = {}
  count = 0
  a = array.combination(3) {|new| hash[new] = new.inject(:*) }
  return hash.values.max
end

product_three([-10,-10,1,3,2])

# returns 300
