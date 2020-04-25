def add_two_numbers(l1, l2)
    sum = l1.reverse.inject{|a,i| a*10 + i} + l2.reverse.inject{|a,i| a*10 + i}
    sum.to_s.reverse.each_char.map(&:to_i)
end

l1=[2,4,3]
l2=[5,6,4]
p add_two_numbers(l1, l2)
