def slugish(arr)
    sorted = false
    until sorted 
        sorted = true
        (0...arr.length-1).each do |i|
            if arr[i].length > arr[i + 1].length
                arr[i], arr[i + 1] =arr[i + 1], arr[i]
                sorted = false
            end
        end
    end
    arr[-1]
end
array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
p slugish(array)
# => "fiiiissshhhhhh"