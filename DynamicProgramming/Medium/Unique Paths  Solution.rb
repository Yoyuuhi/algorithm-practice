# https://leetcode.com/explore/interview/card/top-interview-questions-medium/111/dynamic-programming/808/

# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  m, n = n, m if m < n 
  m -= 1
  n -= 1

  proTop = 1
  for i in (m+n).downto(m+1) do
    proTop *= i
  end

  proDown = 1
  for i in n.downto(1) do
    proDown *= i
  end

  return proTop/proDown
end