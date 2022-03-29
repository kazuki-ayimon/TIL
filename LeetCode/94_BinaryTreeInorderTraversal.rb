# 二分木のルートが与えられた場合、
# そのノードの中間順探査（inorder traversal）を返します。
# Input: root = [1,null,2,3]
# Output: [1,3,2]
# 木構造にある各ノードを1度だけ訪問することを探索（走査）と呼びます。
# 全探索の仕方をおおまかに分けると、
# ・深さ優先探索(DFS)
# ・幅優先探索(BFS)
# の2つとなります。
# 深さ優先探索はさらに
# ・行きがけ順（先行順 / 前順 / preorder）
# ・通りがけ順（中間順 / 間順 / inorder）
# ・帰りがけ順（後行順 / 後順 / postorder）
# の3つに分けることができます

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

n1 = TreeNode.new(1)
# n2 = TreeNode.new(2)
# n3 = TreeNode.new(3)
# n1.left = n2
# n2.left = n3

def inorder_traversal(root)
  result = []
  if root == nil
    return result
  end
  if root.left
    result += inorder_traversal(root.left)
  end
  result.push(root.val)
  if root.right
    result += inorder_traversal(root.right)
  end
  return result
end

p inorder_traversal(nil)