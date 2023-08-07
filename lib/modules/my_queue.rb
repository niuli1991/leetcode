module MyQueue
  class MyStackQueue
    attr_accessor :list
    def initialize()
        @list = []
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        @list << x
    end


=begin
    :rtype: Integer
=end
    def pop()
      val = @list.first
      if @list.size > 1
        @list = @list.slice(1, @list.size)
      else
        @list = []
      end
       
      return val
    end


=begin
    :rtype: Integer
=end
    def peek()
      return @list.first
    end


=begin
    :rtype: Boolean
=end
    def empty()
      return @list.size == 0
    end

  end
end