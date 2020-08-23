# https://leetcode.com/explore/interview/card/top-interview-questions-medium/111/dynamic-programming/809/

# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
  symbol = amount + 1
  array = Array.new(amount + 1, symbol.dup)
  array[0] = 0
  for i in 1..amount do
      for j in 0..coins.length-1 do
          array[i] = [array[i], array[i-coins[j]] + 1].min if coins[j] <= i
      end
  end
  return array[amount] > amount ? -1:array[amount]
end