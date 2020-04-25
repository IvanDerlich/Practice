def bonAppetit(bill, k, b)
    sum = 0
    bill.each_with_index do |item, index|
        sum += item unless index == k
    end
    anna_pays = sum /2
    if anna_pays == b ?
        puts "Bon Appetit"
    else
        puts b - anna_pays   
    end
end

bill = [3, 10, 2, 9]
k = 1
b = 7
p bonAppetit(bill, k, b)