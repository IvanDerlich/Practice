#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/divisible-sum-pairs
require 'benchmark'

def divisibleSumPairsIvan(n, k, ar)
    res = []
    ar.each_with_index{|e1,i|
        ar[i+1..n].each_with_index{|e2,j|
            res << [i,j+i+1] if (e1+e2)%k == 0
        }
    }
    res.length
end

def divisibleSumPairsEapen(n, k, ar)
    count = 0
    for i in 0...(n-1) do
        for j in (i+1)...n do
            count += 1 if (ar[i]+ar[j])%k == 0
        end
    end
    count
end


n=12
k=3
ar= [1, 3, 2, 6, 1, 2, 10, 20,40, 100,44,22]
m = 1000000

Benchmark.bm do |benchmark|
    benchmark.report("Eapen") do
      m.times do
        divisibleSumPairsEapen(n, k, ar)
      end
    end
    benchmark.report("Ivan") do
        m.times do
          divisibleSumPairsIvan(n, k, ar)
        end
    end
end

# n=6
# k=3
# ar= [1, 3, 2, 6, 1, 2]
# puts divisibleSumPairs(n, k, ar)

