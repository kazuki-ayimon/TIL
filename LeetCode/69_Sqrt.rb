# 負でない整数xが与えられた場合、xの平方根を計算して返します。
# 返されるタイプは整数であるため、10進数は切り捨てられ、
# 結果の整数部分のみが返されます。 
# 注: pow（x、0.5）やx ** 0.5などの組み込みの指数関数や
#     演算子を使用することは許可されていません。
# Input: x = 8
# Output: 2
# Explanation: The square root of 8 is 2.82842..., 
#              and since the decimal part is truncated, 2 is returned.

def my_sqrt(x)
  left = 0
  right = x
  while left <= right
    middle = (left + right) / 2
    if middle * middle == x
      return middle
    elsif middle * middle > x
      right = middle - 1
    else
      left = middle + 1
    end
  end
  return middle * middle > x ? middle - 1 : middle
end

puts my_sqrt(8)