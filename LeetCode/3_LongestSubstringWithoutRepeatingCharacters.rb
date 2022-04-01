# 文字列sが与えられた場合、
# 文字を繰り返さずに最長の部分文字列の長さを見つけます。
# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.

def length_of_longest_substring(s)
  longest = 0
  left = 0
  right = 0
  str = []
  while right < s.length
    if str.include?(s[right])
      left = str.index(s[right]) + 1
      str = str[left..-1]
      str.push(s[right])
    else
      str.push(s[right])
      if str.length > longest
        longest = str.length
      end
    end
    right += 1
  end
  return longest
end

p length_of_longest_substring("aab")