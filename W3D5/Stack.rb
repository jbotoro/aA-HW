class Stack
    def initialize
      # create ivar to store stack here!
        @i = Array.new
    end

    def push(el)
      # adds an element to the stack
      @i.push(el)
      self
    end

    def pop
      # removes one element from the stack
        @i.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      return @i.last
    end
  end