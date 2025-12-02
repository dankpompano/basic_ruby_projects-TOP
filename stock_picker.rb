array = #[17,3,7,1] #would return [1,2] and profit would be 3
 [17,3,6,9,15,8,6,1,10]

def stock_picker(array)
  lowest = array[0]
  profit = -1
  buy_index = -1
  best_days = [0, 0]
  array.each_with_index do |stock, index|
    # check the profit
    if (stock - lowest > profit)
      profit = stock - lowest
      best_days = [buy_index, index]
    end

    if (stock < lowest)
      lowest = array[index]
      buy_index = index
      # puts buy_index
      puts lowest
    end
    
  end
  puts best_days
end

stock_picker(array)



# need to
# return an array with the best days to buy and sell
# find the lowest buy and highest sell possible
# record the highest profit
# track the indexes

# Algo
# 1. find the lowest
# 2. do some calculations to find the profit 
# 3. each day consider selling
