# https://leetcode.com/problems/longest-palindromic-substring/

# @param {String} s
# @return {String}
def longest_palindrome(s)
  if s.empty? then
    return ""
  end

  head, tail = 0, 0

  for i in 0..s.size-1 do
    len1 = find_palindrome(s, i, i)
    len2 = find_palindrome(s, i, i+1)
    len = [len1, len2].max
    if tail - head < len then
      head = i - (len-1)/2
      tail = i + len/2
    end
  end

  s[head..tail]
end

def find_palindrome(s, left, right)
  l, r = left, right
  while 0 <= l && r < s.size && s[l] == s[r] do
    l -= 1
    r += 1
  end
  r - l - 1
end