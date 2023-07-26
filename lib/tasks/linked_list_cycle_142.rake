require 'modules/list_node'
include ListNode

task :delete_cycle => :environment do
  list = List.new()
  nums = [1,2,3,4,5]
  n = 2
  
  head = list.init_linked_list(nums)
  puts delete_cycle(head)
  
end

def delete_cycle
  
end

def delete_cycle_easy(head)
  node = head
  stack = []
  while node
    stack << node
    stack.each do |item|
      if item.equal? node.next
        return item
      end
    end

    node = node.next
  end

  return nil
  
end