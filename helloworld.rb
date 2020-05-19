world = "world"
p "Hello #{world}!"

puts '---'

def add_numbers num1, num2=3
  num1+num2
end

p add_numbers 1

puts '---'
i = 0
while i < 5
  p i
  i += 1
end

puts '---'

i = 0

for i in 0..5
  p i
end
puts '---'
4.times do |i|
  p i
end
puts '---'
class Book
  def initialize(title, author)
    @title = title
    @author = author
  end

  def readBook()
    puts "Reading #{@title} by #{@author}"
  end
end

book = Book.new "El origen de las especies", "Charles Darwin"
book.readBook
# puts '---'
# puts '---'
# puts '---'
# puts '---'
# puts '---'
# puts '---'
# puts '---'
# puts '---'
# puts '---'
# puts '---'
# puts '---'
# puts '---'
# puts '---'
# puts '---'
# puts '---'
# puts '---'
# puts '---'