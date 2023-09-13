def RepeatingElement(arr)
    n = arr.length
    repeated_elements = []

    for i in 0..n-1
        for j in i+1..n-1
            if(arr[i] == arr[j])
                repeated_elements << arr[i]
            end
        end
    end

    repeated_elements
end

arr = [2, 3, 3, 1, 5, 4, 5]
puts "Before Repeating #{arr}"

repeatEle = RepeatingElement(arr)
puts "Repeating elements are: #{repeatEle}"
