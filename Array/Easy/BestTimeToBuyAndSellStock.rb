# 121. Best Time to Buy and Sell Stock
# Say you have an array for which the ith element is the price of 
# a given stock on day i.

# If you were only permitted to complete at most one transaction 
# (i.e., buy one and sell one share of the stock), design an algorithm 
# to find the maximum profit.

# Note that you cannot sell a stock before you buy one.

def max_profit(prices)
  left = 0
  right = 1
  profit = 0
  while right < prices.length do
    if prices[right]<prices[left] then
      left = right
    else
      profit = [profit, prices[right]-prices[left]].max
    end
    right += 1
  end
  return profit
end