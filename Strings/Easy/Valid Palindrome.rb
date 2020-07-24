# https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/883/

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  left = 0
  right = s.length-1
  while left < right do
      while !/\A[a-zA-Z0-9]+\z/.match?(s[left]) do
          left += 1
          return true if left == s.length
      end
      while !/\A[a-zA-Z0-9]+\z/.match?(s[right]) do
          right -= 1 
      end
      return false if s[left].downcase != s[right].downcase
      
      left += 1
      right -= 1
  end
  return true
end