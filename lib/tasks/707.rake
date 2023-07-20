require 'modules/list_node'
include ListNode

task :linked_list => :environment do
  list_node = List.new()
  list_node.add_at_head(1)
  list_node.add_at_tail(3)
  list_node.add_at_index(1,2)
  
  puts list_node.get(1)
  
  
  list_node.delete_at_index(1)
  # binding.break
  puts list_node.get(1)
  # binding.break
end