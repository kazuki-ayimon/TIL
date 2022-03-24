# 配列 nums と値 val を指定すると、
# その値のすべてのインスタンスをその場で削除し、新しい長さを返します。 
# 別の配列に余分なスペースを割り当てないでください。
# これは、O(1) の余分なメモリを使用して入力配列をその場で変更することによって行う必要があります。
# 要素の順序は変更できます。 新しい長さを超えて何を残すかは問題ではありません。 
# 明確化: 
# 戻り値が整数であるのに、答えが配列である理由が混乱していますか? 
# 入力配列は参照によって渡されることに注意してください。
# つまり、入力配列への変更は呼び出し側にも認識されます。 
# 内部的には、次のように考えることができます。
# nums は参照によって渡されます。 (つまり、コピーを作成せずに)
# int len = removeElement(nums, val);
# 関数内の nums への変更は、呼び出し元によって認識されます。
# 関数によって返された長さを使用して、最初の len 要素を出力します。
# for (int i = 0; i < len; i++) {
#     print(nums[i]);
# }
# Input: nums = [3,2,2,3], val = 3
# Output: 2, nums = [2,2]
# Explanation: Your function should return length = 2, 
#              with the first two elements of nums being 2.
#              It doesn't matter what you leave beyond the returned length. 
#              For example if you return 2 with nums = [2,2,3,3] or nums = [2,2,0,0], 
#              your answer will be accepted.

def remove_element(nums, val)
  index = 0
  for i in 0...nums.length do
    if nums[i] != val
      nums[index] = nums[i]
      index += 1
    end
  end
  return index
end

puts remove_element([0,1,2,2,3,0,4,2], 2)