require 'modules/tree'
include Tree

task :min_depth => :environment do
  root = TreeNode.new(0)
  left = TreeNode.new(1)
  right = TreeNode.new(2)
  root.left = left
  root.right = right
  left.left  = TreeNode.new(3)
  left.right = TreeNode.new(4)
  right.left = TreeNode.new(5)
  right.right = TreeNode.new(6)
  puts min_depth(root).to_s
  
end

def min_depth(root)
  return 0 if root == nil
  
  left_depth = min_depth(root.left)
  right_depth = min_depth(root.right)

  return left_depth + 1 if root.right == nil && root.left != nil
  return right_depth + 1 if root.left == nil && root.right != nil

  return left_depth > right_depth ? right_depth + 1 : left_depth + 1
end
