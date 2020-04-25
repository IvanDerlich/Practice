# def length_of_longest_substring(s)
#     return 3 if s == "pwwkew"
#     s.chars.uniq{|x| x}.length
# end
def length_of_longest_substring(s)  

    unique_length = s.chars.uniq{|x| x}.length
    return 1 if unique_length == 1
    length = s.length
    return 0 if length == 0
    unique_substring_lengths = []
    for index1 in 0..length
        for index2 in index1+1..length
            # puts "#{index1} : #{index2} : #{index2 - index1 + 1} : #{s[index1..index2].chars.uniq{|x| x}.length} : #{s[index1..index2]}"
            
            unique_length = s[index1..index2].chars.uniq{|x| x}.length
            substring_length = index2 - index1 + 1
            if substring_length == unique_length
                puts s[index1..index2] 
                unique_substring_lengths << substring_length
            end
        end
    end
    unique_substring_lengths.max
end
s = "bbbbb"
p length_of_longest_substring(s)

# s="pwwkew"
# p length_of_longest_substring(s)
# => 3