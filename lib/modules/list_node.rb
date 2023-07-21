module ListNode
  class Node
    attr_accessor :next
    attr_reader   :val
  
    def initialize(val)
      @val = val
      @next  = nil
    end
  
    def to_s
      "Node with value: #{@val}"
    end
  end

  class List
    def initialize()
      @head = nil
    end

    def init_linked_list(nums)
      pointer = Node.new(nil)
      @head = pointer
      nums.each do |item|
        tail = Node.new(item)
        pointer.next = tail
        pointer = tail
      end

      @head = @head.next
      return @head
    end

    def get(index)
      node = @head
      pointer = 0
      while node
        if pointer == index
          return node.val
        else
          node = node.next
        end
        pointer += 1
      end
      return -1
    end

    def add_at_head(val)
      node = @head
      if node
        node = Node.new(val)
        node.next = @head
        @head = node
      else
        @head = Node.new(val)
      end
    end

    def add_at_tail(val)
      node = @head
      if node
        while node.next
          node = node.next
        end
        node.next = Node.new(val)
      else
        @head = Node.new(val)
      end
    end

    def add_at_index(index, val)
      node = @head
      pre_node = node
      pointer = 0
      while node
        if pointer == index
          if index == 0
            @head = Node.new(val)
            @head.next = pre_node
          else
            new_node = Node.new(val)
            pre_node.next = new_node
            new_node.next = node
          end

          break
        end
        pre_node = node
        node = node.next
        pointer += 1
      end

      if node == nil
        if index == 0
          @head = Node.new(val)
        elsif index > 0 && pointer == index
          pre_node.next = Node.new(val)
        end
      end
      
    end

    def delete_at_index(index)
      node = @head
      pre_node = node
      pointer = 0
      while node
        if pointer == index
          if index == 0
            @head = @head.next
          else
            pre_node.next = node.next
          end
          break
        end

        pre_node = node
        node = node.next
        pointer += 1
      end
    end

  end
end

