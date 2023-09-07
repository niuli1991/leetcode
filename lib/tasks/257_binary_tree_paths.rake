require 'modules/tree'
include Tree

task :binary_tree_paths => :environment do
  root = TreeNode.new(0)
  left = TreeNode.new(1)
  right = TreeNode.new(2)
  root.left = left
  root.right = right
  left.left  = TreeNode.new(3)
  left.right = TreeNode.new(4)
  right.left = TreeNode.new(5)
  right.right = TreeNode.new(6)
  puts binary_tree_paths(root).to_s
end

def binary_tree_paths(root)
  result = []
  path = []
  path.push root.val
  backtracking_binary_tree_paths(result, path, root)
  return result
end

def backtracking_binary_tree_paths(result, path, node)
  if node.left == nil && node.right == nil
    result << path.join('->')
    return
  end

  if node.left
    path.push node.left.val
    backtracking_binary_tree_paths(result, path, node.left)
    path.pop
  end
  
  if node.right
    path.push node.right.val
    backtracking_binary_tree_paths(result, path, node.right)
    path.pop
  end
  
end