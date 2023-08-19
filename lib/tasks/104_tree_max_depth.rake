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
  max = find_depth(root, depth, max)
end

def find_depth(node, depth, max)
  if node == nil
    max = depth > max ? depth : max
    return max
  end
  
  depth += 1
  max = find_depth(node.left, depth, max)
  max = find_depth(node.right, depth, max)
  return max
end