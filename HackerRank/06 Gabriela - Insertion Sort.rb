def insertionSort1(n, arr)
    e = arr[-1] #rightmost cell
    length = n - 1
    sorted = false
    while length > 0
        if arr[length - 1] <= e
            arr[length] = e
            sorted = true
            break
        else
            arr[length] = arr[length - 1]
        end
        puts arr.join(' ')
        length -= 1
    end
    arr[0] = e unless sorted 
    puts arr.join(' ')
end