# Takes a collection of integers and returns the product of all other integers excluding the current position.

def product_except_self(arr)
    count = 0
  total = Array.new(arr.length,1)
  until count == arr.length
    arr.each_with_index do |number, index|
      if count == index
        "ignore index"
      else
        total[count] = number * total[count]
      end
    end
    count += 1
  end
  total
end

array = [1,2,3,4,5]

product_except_self(array)

# returns [120, 60, 40, 30, 24]
