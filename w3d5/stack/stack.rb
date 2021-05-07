class Stack
    def initialize(arr)
      # create ivar to store stack here!
      @arr = arr
    end

    def push(el)
      # adds an element to the stack
      @arr.push(el)
    end

    def pop
      # removes one element from the stack
      @arr.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @arr[-1]
    end
  end

#   st1 = Stack.new([2,3,4])
#   p st1.push(5)
#   p st1.peek
#   p st1.pop
#   p st1.peek

