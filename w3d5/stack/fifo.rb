class Queue
    def initialize(arr)
      # create ivar to store stack here!
      @arr = arr
    end

    def enqueue(el)
      # adds an element to the stack
      @arr.push(el)
    end

    def dequeue
      # removes one element from the stack
      @arr.shift
    end

    def peek
      # returns, but doesn't remove, the last element in the stack
      @arr[0]
    end
end

  q1 = Queue.new([2,3,4])
  p q1.enqueue(5)
  p q1.peek
  p q1.dequeue
  p q1.peek