def Sec_Lowest(arr)
    n = arr.length
    lowest = arr[0]
    second_lowest = Float::INFINITY  # Initialize second_lowest to positive infinity
    
    for i in 1..n-1
        if arr[i] < lowest
            second_lowest = lowest
            lowest = arr[i]
        elsif arr[i] < second_lowest
            second_lowest = arr[i]
        end
    end

    if second_lowest == Float::INFINITY
        return nil  # Return nil if there is no valid second lowest
    else
        return second_lowest
    end
end

def LargestEle(arr)
    n = arr.length
    largest = arr[0]  # Initialize largest with the first element of the array

    for i in 1..n-1
        if arr[i] > largest
            largest = arr[i]
        end
    end

    return largest
end

arr = [1, 3, 2, 30, 80, 50]
secondlowest = Sec_Lowest(arr)
if secondlowest.nil?
    puts "There is no second lowest element."
else
    puts "Second Lowest Element is: #{secondlowest}"
end

largest_element = LargestEle(arr)
puts "Largest element is: #{largest_element}"
