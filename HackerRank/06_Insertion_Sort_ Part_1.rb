#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/divisible-sum-pairs

def insertionSort1(n, arr)
    aux = arr[-1]
    i = n - 1
    while i > 0 do
        arr[i] = arr[i-1]
        if arr[i] < aux
            arr[i] = aux
            puts arr.join(' ')
            break
        end        
        puts arr.join(' ')
        i-= 1
    end
    if arr[0] > aux
        arr[0] = aux 
        puts arr.join(' ')
    end    
end

n = 10
p arr = [2, 3, 4, 5, 6, 7, 8, 9, 10, 1]
insertionSort1(n, arr)