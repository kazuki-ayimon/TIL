# 二分木のルートと整数のtargetSumが与えられた場合、
# パスに沿ったすべての値の合計がtargetSumに等しくなるように、
# ツリーにルートからリーフへのパスがある場合はtrueを返します。
# 葉は子のないノードです。
# Input: root = [5,4,8,11,null,13,4,7,2,null,null,null,1], targetSum = 22
# Output: true

# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end
# @param {TreeNode} root
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum)
  if root == nil
    return false
  elsif root.left == nil && root.right == nil && target_sum == root.val
    return true
  else
    target_sum -= root.val
    return has_path_sum(root.left, target_sum) || has_path_sum(root.right, target_sum)
  end
end

require 'minitest/autorun'

class PathSumTest < Minitest::Test
  def test_has_path_sum1
    tn1 = TreeNode.new(5)
    tn2 = TreeNode.new(4)
    tn3 = TreeNode.new(11)
    tn4 = TreeNode.new(7)
    tn5 = TreeNode.new(2)
    tn6 = TreeNode.new(8)
    tn7 = TreeNode.new(13)
    tn8 = TreeNode.new(4)
    tn9 = TreeNode.new(1)
    tn1.left = tn2
    tn2.left = tn3
    tn3.left = tn4
    tn3.right = tn5
    tn1.right = tn6
    tn6.left = tn7
    tn6.right = tn8
    tn8.right = tn9
    assert_equal true, has_path_sum(tn1, 22)
  end

  def test_has_path_sum2
    tn1 = TreeNode.new(1)
    tn2 = TreeNode.new(2)
    tn3 = TreeNode.new(3)
    tn1.left = tn2
    tn2.right = tn3
    assert_equal false, has_path_sum(tn1, 5)
  end

  def test_has_path_sum3
    tn1 = TreeNode.new(1)
    tn2 = TreeNode.new(2)
    tn1.left = tn2
    assert_equal false, has_path_sum(tn1, 0)
  end
end