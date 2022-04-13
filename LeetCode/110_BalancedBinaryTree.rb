# 二分木が与えられた場合、それが高さのバランスが取れているかどうかを判断します。
# この問題では、高さのバランスが取れた二分木は次のように定義されます。
# すべてのノードの左右のサブツリーの高さが1以下しか異なる二分木。
# Input: root = [3,9,20,null,null,15,7]
# Output: true

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

tn1 = TreeNode.new(3)
tn2 = TreeNode.new(9)
tn3 = TreeNode.new(20)
tn4 = TreeNode.new(15)
tn5 = TreeNode.new(7)
tn1.left = tn2
tn1.right = tn3
tn3.left = tn4
tn3.right = tn5

def is_balanced(root)
  return depth(root) >= 0
end

def depth(root)
  if root == nil
    return 0
  end
  left = depth(root.left)
  right = depth(root.right)
  if (left - right).abs > 1 || left < 0 || right < 0
    return -1
  end
  return [left, right].max + 1
end

p is_balanced(tn1)