# 負でない整数を表す空でない配列を指定すると、整数に 1 を加えます。 
# 最も大きい位の数字がリストの先頭にあり、
# 配列の各要素に 1 つの数字が含まれるように数字が格納されます。 
# 数値 0 を除いて、整数には先頭に０が含まれていないと見なすことができます。
# Input: digits = [1,2,3]
# Output: [1,2,4]
# Explanation: The array represents the integer 123.

def plus_one(digits)
  if digits.length == 0
    digits.push(1)
  elsif digits[-1] == 9
    digits = plus_one(digits[0...digits.length - 1])
    digits.push(0)
  else
    digits[-1] += 1
  end
  return digits
end
puts plus_one([1,2,3])