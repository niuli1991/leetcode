require 'modules/tree'
include Tree

task :count_bit_tree_nodes => :environment do
  root = TreeNode.new(0)
  left = TreeNode.new(1)
  right = TreeNode.new(2)
  root.left = left
  root.right = right
  left.left  = TreeNode.new(3)
  left.right = TreeNode.new(4)
  right.left = TreeNode.new(5)
  right.right = TreeNode.new(6)
  puts count_nodes(root).to_s
end

left_count = 0
right_count = 0

def count_nodes(root)
  return 0 if root == nil
  left_count = count_nodes(root.left)
  right_count = count_nodes(root.right)
  return left_count + right_count + 1
end