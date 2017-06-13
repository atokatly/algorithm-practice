# Design an algorithm to find the frequency of occurrence of all words in an article.

def word_frequency(article)
  hash = {}
  characters = article.downcase.gsub(/[^a-z0-9\s]/i, '')
  characters = characters.split(" ")

  characters.each do |word|
    if hash[word]
      hash[word] += 1
    else
      hash[word] = 1
    end
  end
  return hash
end

word_frequency("Hi 'Anthony' are you anthony? hi")

# returns {"hi"=>2, "anthony"=>2, "are"=>1, "you"=>1}
