require 'modules/list_node'
include ListNode

task :reverse_list => :environment do
  list = List.new()
  nums = [1,2,3,4,5]
  puts reverse_list(list.init_linked_list(nums))
  
end

def reverse_list(head)
  next_node = nil
  while head
      swap = head.next
      head.next = next_node
      next_node = head
      head = swap
  end
  
  return next_node
end