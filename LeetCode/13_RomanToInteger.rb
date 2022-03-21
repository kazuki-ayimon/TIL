# ローマ数字は、I、V、X、L、C、D、M の7つの異なる記号で表されます。
# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000
# たとえば、2はローマ数字でIIと書き、2つの1を足すだけです。 
# 12はXIIと書きますが、これは単にX+IIです。 27という数字はXXVII、つまりXX+V+IIと書かれています。
# ローマ数字は通常、左から右へ最大から最小へと書かれます。
# ただし、4の数字はIIIIではありません。その代わり、数字の4はIVと書かれています。 
# 1は5の前にあるので、それを差し引いて4にします。
# 同じ原則が、IXと書かれた数字の9にも適用されます。減算が使用される6つのインスタンスがあります。
# IをV(5)とX(10)の前に置くと、4と9を作ることができます。
# XをL(50)とC(100)の前に置くと、40と90になります。
# CをD(500)とM(1000)の前に置くと、400と900になります。
# Input: s = "MCMXCIV"
# Output: 1994
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.

def roman_to_int(s)
  hash = {
  'I'=> 1,
  'V'=> 5,
  'X'=> 10,
  'L'=> 50,
  'C'=> 100,
  'D'=> 500,
  'M'=> 1000
  }
  total = 0
  i = 0
  
  while i < s.length
    if i + 1 < s.length && hash[s[i]] < hash[s[i+1]]
      total += hash[s[i+1]] - hash[s[i]]
      i += 1
    else
      total += hash[s[i]]
    end
    i += 1
  end
  
  return total
end

puts roman_to_int("III")








