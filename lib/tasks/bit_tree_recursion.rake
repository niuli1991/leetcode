require 'modules/tree'
include Tree

task :bit_tree_recursion => :environment do
  root = TreeNode.new(0)
  left = TreeNode.new(1)
  right = TreeNode.new(2)
  root.left = left
  root.right = right
  left.left  = TreeNode.new(3)
  left.right = TreeNode.new(4)
  right.left = TreeNode.new(5)
  right.right = TreeNode.new(6)
  puts pre_order_traversal(root).to_s
end

#前序遍历 中左右
#中序遍历 左中右
#后序遍历 左右中
def traversal(node, result)
  return if node == nil
  result << node.val
  traversal(node.left, result)
  traversal(node.right, result)
end

#前序遍历
def pre_order_traversal(root)
  result = []
  traversal(root, result)
  return result
end

