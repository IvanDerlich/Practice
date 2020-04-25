#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/divisible-sum-pairs

def insertionSort2(n, arr)  
    i = 0
    puts arr.join(' ')
    while i < n do        
        #puts i
        insertionSort1(n,arr[0,i+2]) 
        i += 1
    end
    #insertionSort1(length,arr[0..length])    
end

def insertionSort1(n, arr)
    aux = arr[-1]
    i = n - 1
    while i > 0 do
        arr[i] = arr[i-1]
        if arr[i] < aux
            arr[i] = aux
            #puts arr.join(' ')
            break
        end        
        #puts arr.join(' ')
        i-= 1
    end
    if arr[0] > aux
        arr[0] = aux 
        #puts arr.join(' ')
    end    
end

n = 6
arr = [1, 4, 3, 5, 6, 2]
insertionSort2(n, arr)