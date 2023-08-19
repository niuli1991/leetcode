require 'modules/tree'
include Tree

task :symmetric_tree => :environment do
  root = TreeNode.new(0)
  left = TreeNode.new(3)
  right = TreeNode.new(3)
  root.left = left
  root.right = right
  left.left  = TreeNode.new(4)
  left.right  = TreeNode.new(5)
  right.left = TreeNode.new(5)
  right.right  = TreeNode.new(4)
  left.right.left  = TreeNode.new(8)
  left.right.right  = TreeNode.new(9)
  right.left.left = TreeNode.new(9)
  right.left.right = TreeNode.new(8)
  puts is_symmetric(root)
end

def is_symmetric(root)
  return false if root == nil
  left = []
  right = []
  recursion_left(root.left, left)
  recursion_right(root.right, right)
  puts left.to_s
  puts right.to_s
  return (left <=> right) == 0
end

def recursion_left(node, result)
  if node == nil
    result << nil
    return
  end
  result << node.val
  recursion_left(node.left, result)
  recursion_left(node.right, result)
end

def recursion_right(node, result)
  if node == nil
    result << nil
    return
  end
  result << node.val
  recursion_right(node.right, result)
  recursion_right(node.left, result)
end