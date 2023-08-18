require 'modules/tree'
include Tree

task :invert_bit_tree => :environment do
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
  root = invert_tree(root)
  puts pre_order_traversal(root).to_s
end

def invert_tree(node)
  return if node == nil
  swap = node.left
  node.left = node.right
  node.right = swap
  invert_tree(node.left)
  invert_tree(node.right)
  return node
end

