require 'modules/list_node'
include ListNode

task :get_intersection_node => :environment do
  list1 = List.new()
  list2 = List.new()
  nums1 = [1,2,3,4,5]
  nums2 = [4,5,6,78]
  n = 2
  
  head_a = list1.init_linked_list(nums1)
  head_b = list2.init_linked_list(nums2)
  puts func(head, n)
  
end

def func(head_a, head_b)
  len_a = 0
  len_b = 0
  node_a = head_a
  node_b = head_b
  while node_a
    len_a += 1
    node_a = node_a.next
  end
  while node_b
    len_b += 1
    node_b = node_b.next
  end

  #noode_a为最长链
  
  if len_a < len_b
    temp_len = len_a
    len_a = len_b
    len_b = temp_len

    node_a = head_b
    node_b = head_a
  else
    node_a = head_a
    node_b = head_b
  end

  gap = len_a - len_b
  while gap > 0
    node_a = node_a.next
    gap -= 1
  end
  
  while node_a && node_b
    if node_a.val == node_b.val
      return node_a
    end

    node_a = node_a.next
    node_b = node_b.next
  end

end