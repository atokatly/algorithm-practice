# Takes a string of parens, brackets, braces etc... and checks to see if they are properly closing.

def validate(str)
  stack = []
  table = {'('=>')', '['=>']', '{'=>'}'}
  opening = table.keys
  close = table.values

  str.each_char do |char|
    if opening.include? char
      stack << char
    elsif close.include? char
      return false if stack.empty? || (table[stack.pop] != char)
    end
  end
  return true if stack.length == 0
end

a = "[()()]"
b = "[)(()]("

validate(a) # Returns True
validate(b) # Returns False
