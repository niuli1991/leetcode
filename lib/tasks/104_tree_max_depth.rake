require 'modules/tree'
include Tree

task :max_depth => :environment do
  root = TreeNode.new(0)
  left = TreeNode.new(1)
  right = TreeNode.new(2)
  root.left = left
  root.right = right
  left.left  = TreeNode.new(3)
  left.right = TreeNode.new(4)
  right.left = TreeNode.new(5)
  right.right = TreeNode.new(6)
  puts max_depth(root).to_s
  
end

def max_depth(root)
  max = 0
  depth = 0
  max = get_max_depth(root, depth, max)
end

def get_max_depth(node, depth, max)
  depth > max ? depth : max if node == nil
  
  depth += 1
  max = get_max_depth(node.left, depth, max)
  max = get_max_depth(node.right, depth, max)
  return max
end