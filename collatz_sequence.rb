def longest_chain
  hash = {}
  # count of current length of tested value
  count = 0
  # current longest chain
  highest = 0
  (2..999999).each do |number|
    starting_value = number
      until number == 1
        if hash[number]
          count = count + hash[number]
          number = 1
        else
          if number.even?
            number = number / 2
          else
            number = (number * 3) + 1
          end
          count += 1
        end
      end
    hash[starting_value] = count
    highest = [highest,count].max
    count = 0
  end
  return "The number with the longest chain is #{hash.key(highest)}"
end

longest_chain
# returns "The number with the longest chain is 837799"
