# Look at an array of stock prices and find where you can maximize profit when you buy/sell.
# Rule: Must buy before you sell
# Output is the most profit you could make

def get_max_profit(stock_prices_yesterday)
    # check for at least 2 prices
    if stock_prices_yesterday.length < 2
        raise IndexError, 'Need at least 2 prices to test.'
    end
    # initialize first price and the first possible profit
    min_price = stock_prices_yesterday[0]
    max_profit = stock_prices_yesterday[1] - stock_prices_yesterday[0]

    stock_prices_yesterday.each_with_index do |current_price, index|
        if index == 0 then next end
        # see what our profit would be if we bought at the
        # min price and sold at the current price
        potential_profit = current_price - min_price
        # update max_profit
        max_profit = [max_profit, potential_profit].max
        # update min_price
        min_price  = [min_price, current_price].min
    end
    return max_profit
end

array = [10, 7, 5, 8, 11, 9]

get_max_profit(array)

# returns 6 -> (buy at 5, sell at 11)

#------Alternative Solution ------
def stock(arr)
  if arr.length >= 2
    hash = {}
    count = 1
    until arr.length == 1
      current = arr[0]
      arr.delete_at(0)
      arr.each do |price|
        hash[count] = price - current
        count += 1
      end
    end
  else
    puts "Not enough stocks to trade."
  end
  p hash.values.max
end

array = [10, 7, 5, 8, 11, 9]

stock(array)
