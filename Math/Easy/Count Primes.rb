# https://leetcode.com/explore/interview/card/top-interview-questions-easy/102/math/744/

# @param {Integer} n
# @return {Integer}
def count_primes(n)
  hash = Hash.new
  count = 0
  for i in 2..n-1 do
      if hash[i] == nil
          count += 1
          j = i
          while j*i <= n do
              hash[j*i] = 1
              j += 1
          end
      end
  end
  return count
end

# primeを使う方法
require 'prime'

def count_primes(n)
  Prime.each(n-1).count
end