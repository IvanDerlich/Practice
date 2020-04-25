#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/divisible-sum-pairs

def divisibleSumPairs(n, k, ar)
    count = 0
    for i in 0...(n-1) do
        for j in (i+1)...n do
            count += 1 if (ar[i]+ar[j])%k == 0
        end
    end
    count
end

n=6
k=3
ar= [1, 3, 2, 6, 1, 2]
puts divisibleSumPairs(n, k, ar)