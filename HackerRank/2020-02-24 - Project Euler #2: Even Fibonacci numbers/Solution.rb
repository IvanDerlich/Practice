#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    limit = gets.strip.to_i
    first = 1
    second = 2
    items = []
    while second < limit do 
      temp = second
      second = first + second
      first = temp    
      items.push(first) if first % 2 == 0
    end 
    puts items.sum
end