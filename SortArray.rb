def SortArray(arr)
    n = arr.length

    # Perform n-1 passes
    (n - 1).times do
        for i in 0..(n - 2)
            if arr[i] > arr[i + 1]
                temp = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = temp
            end
        end
    end
    return arr
end

arr = [1, 3, 70, 30, 80, 50]
puts "Before Sorting: #{arr}"

sortedArray = SortArray(arr)
puts "After Sorting: #{sortedArray}"
