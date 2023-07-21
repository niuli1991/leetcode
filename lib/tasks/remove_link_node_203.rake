require 'modules/list_node'
include ListNode

task :remove_link_node => :environment do
  nums = [3,3,3,3,3,3]
  val = 3
  list = List.new()
  head = list.init_linked_list nums
  head = remove_equal_value_node head, val
end

def remove_equal_value_node(head, val)

  #删除头结点
  while head != nil && head.val == val
    head = head.next
  end

  node = head
  #删除非头节点
  pre_node = head
  while node != nil
    if node.val == val
      pre_node.next = node.next
    else
      pre_node = node
    end
    node = node.next
  end
  return head
end  



class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    if @head
      find_tail.next = Node.new(value)
    else
      @head = Node.new(value)
    end
  end

  def find_tail
    node = @head
    return node if !node.next
    return node if !node.next while (node = node.next)
  end

  def append_after(target, value)
    node           = find(target)

    return unless node

    old_next       = node.next
    node.next      = Node.new(value)
    node.next.next = old_next
  end

  def find(value)
    node = @head

    return false if !node.next
    return node  if node.value == value

    while (node = node.next)
      return node if node.value == value
    end
  end

  def delete(value)
    if @head.value == value
      @head = @head.next
      return
    end

    node      = find_before(value)
    node.next = node.next.next
  end

  def find_before(value)
    node = @head

    return false if !node.next
    return node  if node.next.value == value

    while (node = node.next)
      return node if node.next && node.next.value == value
    end
  end

  def print
    node = @head
    puts node

    while (node = node.next)
      puts node
    end
  end
end