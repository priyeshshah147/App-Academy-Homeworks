class HashMap
    def initialize(hash_arr)
      # create ivar to store stack here!
      @hash_arr = hash_arr
    end

    def set_key(el)
      # adds an element to the stack
        if @hash_arr.none?{|ele| ele[0] == el[0]}
            @hash_arr << el
        end

    end

    def del_key
      # removes one element from the stack
      @hash_arr.shift
    end

    def peek
      # returns, but doesn't remove, the last element in the stack
      @hash_arr[0]
    end
end


p h1 = HashMap.new([["hello", "world"], [2,4], ["cat", "dog"]])
p h1.enqueue([5,3])
p h1
p h1.enqueue(["cat", "mouse"])
p h1
p h1.dequeue
p h1.peek