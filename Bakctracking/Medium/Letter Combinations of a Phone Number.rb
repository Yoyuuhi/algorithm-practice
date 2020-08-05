# https://leetcode.com/explore/interview/card/top-interview-questions-medium/109/backtracking/793/

# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  return [] if digits == ""
  hash = {}
  hash["2"] = ["a", "b", "c"]
  hash["3"] = ["d", "e", "f"]
  hash["4"] = ["g", "h", "i"]
  hash["5"] = ["j", "k", "l"]
  hash["6"] = ["m", "n", "o"]
  hash["7"] = ["p", "q", "r", "s"]
  hash["8"] = ["t", "u", "v"]
  hash["9"] = ["w", "x", "y", "z"]
  
  results = []
  
  add_result(digits, 0, Array.new(digits.length), hash, 0, results)
  add_result(digits, 0, Array.new(digits.length), hash, 1, results)
  add_result(digits, 0, Array.new(digits.length), hash, 2, results)
  add_result(digits, 0, Array.new(digits.length), hash, 3, results) if hash[digits[0]].length == 4
  
  return results
end

def add_result(digits, depth, result, hash, index, results)
  result[depth] = hash[digits[depth]][index]
  results << result.join if depth == digits.length - 1
  if depth < digits.length-1
      add_result(digits, depth+1, result, hash, 0, results)
      add_result(digits, depth+1, result, hash, 1, results)
      add_result(digits, depth+1, result, hash, 2, results)
      add_result(digits, depth+1, result, hash, 3, results) if hash[digits[depth+1]].length == 4
  end
end