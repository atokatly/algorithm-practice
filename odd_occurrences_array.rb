# Given an array A consisting of N integers, returns the value of the unpaired element.

def solution(a)
# check if there is an element in the array that occurs only 1x
# reduce the array into a hash with key: element, value: count
  result_hash = a.reduce(Hash.new(0)) do |hash, number|
    hash[number] += 1
    hash
  end
# look at hash for value == 1 and return key
  result_hash.key(1)
end
