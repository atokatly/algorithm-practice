# take a string and reverse it
def reverse_string(str)
  # create a container for new reversed_string
  output = Array.new(str.length)
  count = 0
  position = -1
  # loop through each character from the end and assign it to the beggining
  until count == str.length
    output[count] = str[position]
    count += 1
    position -= 1
  end
  return output.join
end

reverse_string("anthony tokatly")
