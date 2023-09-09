require 'modules/tree'
include Tree

task :sum_of_left_leaves => :environment do
  root = TreeNode.new(0)
  left = TreeNode.new(1)
  right = TreeNode.new(2)
  root.left = left
  root.right = right
  left.left  = TreeNode.new(3)
  left.right = TreeNode.new(4)
  right.left = TreeNode.new(5)
  right.right = TreeNode.new(6)
  puts sum_of_left_leaves(root).to_s
end

def sum_of_left_leaves(node)
  return 0 if node == nil
  left_val = 0
  left_val = node.left.val if node.left != nil && node.left.left == nil && node.left.right == nil 
  return left_val + sum_of_left_leaves(node.left) + sum_of_left_leaves(node.right)
end

def sum_of_left_leaves_complex(node, left_flag)
  if node.left == nil && node.right == nil
    if left_flag
      return node.val 
    else
      return 0
    end
  end
  sum = 0 if sum == nil
  sum = sum_of_left_leaves_complex(node.left, true) if node.left
  sum += sum_of_left_leaves_complex(node.right, false) if node.right

  return sum
end