require 'modules/list_node'
include ListNode

task :remove_nth_from_end => :environment do
  list = List.new()
  nums = [1,2,3,4,5]
  n = 2
  
  head = list.init_linked_list(nums)
  puts func(head, n)
  
end

def func(head, n)
  len = 0
  node = Node.new(nil)
  node = head
  while node
    len += 1
    node = node.next
  end

  node = head
  pre_node = head
  index = 0
  len = len - n
  return head.next if len == 0

  while node
    if len == index
      pre_node.next = node.next
      return head
    else
      pre_node = node
      node = node.next
    end
    index += 1
  end
end

