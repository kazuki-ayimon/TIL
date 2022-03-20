# 符号付き32ビット整数xを指定すると、その数値を逆にしてxを返します。
# xを逆にすると、値が符号付き32ビット整数の範囲[-2^31,2^31-1]の外に出る場合は、0を返します。
# 環境で64ビット整数（符号付きまたは符号なし）を格納できないと想定します。
# Input: x = 123
# Output: 321

def reverse(x)
  result = 0
  isNegative = false
  if x < 0
    x = x * -1
    isNegative = true
  end
  while x > 0
    result = result * 10 + x % 10
    x /= 10
  end
  if -(2**31) <= result && result <= 2**31 -1
    if isNegative
      return result * -1
    else
      return result
    end
  else
    return 0
  end
end

puts reverse(123)









