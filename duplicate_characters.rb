# In a list, find and remove duplicate characters.
def remove_duplicates(list)
  hash = {}
  list = list.chars
  output_list = ""
  list.each do |character|
    if hash[character]
      hash[character] += 1
    else
      hash[character] = 1
      output_list += character
    end
  end
  return output_list
end

remove_duplicates("abcdefghhgbcx") # returns "abcdefghx"
