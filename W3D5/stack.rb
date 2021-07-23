  class Stack
    def initialize
        @arr = []
      # create ivar to store stack here!
    end

    def push(el)
        @arr.push(el)
      # adds an element to the stack
    end

    def pop
        @arr.pop
      # removes one element from the stack
    end

    def peek
        @arr[-1]
      # returns, but doesn't remove, the top element in the stack
    end
  end