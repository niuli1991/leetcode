require 'modules/list_node'
include ListNode

task :swap_pairs => :environment do
  list = List.new()
  nums = [1,2,3]
  head = list.init_linked_list(nums)
  
  
  puts swap_pairs(head)

end

def swap_pairs(head)
  index = 1
  node = head
  pre_pre_node = Node.new(nil)
  pre_node = Node.new(nil)
  while node
    if index % 2 == 0
      pre_node.next = node.next
      node.next = pre_node
      pre_pre_node.next = node
      pre_pre_node = pre_node
      head = node if index == 2
      node = pre_node.next
    else
      pre_node = node
      node = node.next
    end
    index += 1
  end

  return head
end