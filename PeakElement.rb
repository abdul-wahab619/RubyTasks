#Function for Finding Peak Element
def findPeak(arr)
    n = arr.length

    # Check Peak first_ele and last_ele
    if n == 1
        return arr[0]
    end
    if arr[0] >= arr[1]
        return arr[0]
    end
    if arr[n - 1] >= arr[n - 2]
        return arr[n - 1]
    end

    # Apply loop on all the elements
    for i in 1..n - 2
        if arr[i] > arr[i - 1] && arr[i] > arr[i + 1]
            return arr[i]
        end
    end
end

arr = [1, 3, 70, 30, 80, 50]
puts "Index of a peak point is #{findPeak(arr)}"
