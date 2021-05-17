# big o notation is way a desribe how fast 
# input size grows it can be a problem

# optimize our code to speed up code
# sort 100 million socialise security
# as increases to infinity. we need to optimise the performance
# algorithm
# space complexity
# time complexity

class Array 
    def merge_sort
        return self if count < 2
        mid = self.count /2

        left = self.take(mid)
        right = self.drop(mid)
        sorted_left = left.merge_sort
        sorted_right = right.merge_sort

        merger(sorted_left, sorted_right)

    end

    def merger(left, right)
        merged = []

        until left.empty? || right.empty?
            if left.first < right.first
                merged << left.shift
            else
                merged << right.shift
            end
        end

        merged + left + right

    end 
end


class Array
    def subsets 
        return [[]] if self.empty?
        subs = self.take(count-1).subsets
        subs.concat(subs.map {|subs| sub + [self.last]})

    end


end