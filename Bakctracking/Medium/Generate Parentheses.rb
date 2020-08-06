# https://leetcode.com/explore/interview/card/top-interview-questions-medium/109/backtracking/794/

# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  results = []
  calculate_parenthesis(results, n, n, "")
  return results
end

def calculate_parenthesis(results, left, right, result)
  results << result if left == 0 && right == 0
  
  calculate_parenthesis(results, left-1, right, result+"(") if left > 0
  calculate_parenthesis(results, left, right-1, result+")") if right > 0 && left < right
end