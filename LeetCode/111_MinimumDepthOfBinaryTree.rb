# 二分木が与えられたら、その最小の深さを見つけます。
# 最小深度は、ルートノードから最も近いリーフノードまでの最短パスに沿ったノードの数です。 
# 注：リーフは子のないノードです。
# Input: root = [3,9,20,null,null,15,7]
# Output: 2

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def min_depth(root)
  if root == nil
    return 0
  elsif root.left == nil || root.right == nil
    return [min_depth(root.left), min_depth(root.right)].max + 1
  else
    return [min_depth(root.left), min_depth(root.right)].min + 1
  end
end

require 'minitest/autorun'

class MinDepthTest < Minitest::Test
  def test_min_depth
    tn1 = TreeNode.new(3)
    tn2 = TreeNode.new(9)
    tn3 = TreeNode.new(20)
    tn4 = TreeNode.new(15)
    tn5 = TreeNode.new(7)
    tn1.left = tn2
    tn1.right = tn3
    tn3.left = tn4
    tn3.right = tn5
    assert_equal 2, min_depth(tn1)
  end
end