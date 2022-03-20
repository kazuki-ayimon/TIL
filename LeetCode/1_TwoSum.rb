# 整数numsの配列と整数targetが与えられた場合、
# 合計してtargetになる2つのnumsのインデックスを返します。
# 各入力には正確に1つの解があると想定でき、同じ要素を2回使用することはできません。 
# 回答は任意の順序で返すことができます。
# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Output: Because nums[0] + nums[1] == 9, we return [0, 1].

def two_sum(nums, target)
  result = []
  for i in 0...nums.length do
    for j in (i + 1)...nums.length do
      if nums[i] + nums[j] == target
        result.push(i,j)
      end
    end
  end
  return result
end

puts two_sum([2,7,11,15],9)









