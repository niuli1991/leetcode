require 'modules/tree'
include Tree

task :bit_tree_stack => :environment do
  root = TreeNode.new(0)
  left = TreeNode.new(1)
  right = TreeNode.new(2)
  root.left = left
  root.right = right
  left.left  = TreeNode.new(3)
  left.right = TreeNode.new(4)
  right.left = TreeNode.new(5)
  right.right = TreeNode.new(6)

  puts pre_order_traversal_stack(root).to_s
  puts in_order_traversal_stack(root).to_s
  puts post_order_traversal_stack(root).to_s
end

#后序遍历
def post_order_traversal_stack(root)
  result = []
  stack = []
  return result if root == nil
  stack.push root

  while !stack.empty?
    node = stack.pop
    left = node.left
    right = node.right
    result << node.val

    stack.push left if left != nil
    stack.push right if right != nil
  end
  result.reverse
end


#中序遍历
def in_order_traversal_stack(node)
  result = []
  stack = []
  return result if node == nil
  
  while node != nil || !stack.empty?
    if node != nil
      stack.push node
      node = node.left
    else
      node = stack.pop
      result << node.val
      node = node.right
    end
  end
  result
end

#前序遍历
def pre_order_traversal_stack(root)
  result = []
  stack = []
  return result if root == nil
  stack.push root
  while !stack.empty?
    node = stack.pop
    left = node.left
    right = node.right
    result << node.val

    stack.push right if right != nil
    stack.push left if left != nil
  
  end
  result
end