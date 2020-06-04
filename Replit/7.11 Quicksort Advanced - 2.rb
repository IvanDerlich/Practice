# https://repl.it/student/submissions/7641152

# https://www.youtube.com/watch?v=Hoixgm4-P4M

def advanced_quicksort(array)
  return array
  return array if array.length < 2
  pivot = array[0]
  # swap the pivot with the element at the end of the array     
    
  # <work>
  # loop do 
    # Definitions
    # ifl: item from left that is larger than the pivot and it's index          
    # a: index of item from left
    # ifr: item from right is smaller than the pivot and it's index          
    # b: index of item from right

    # find ifr and a
    # find ifl and b          
    # break if b < a
    # swap items in the array
      
  # end 
  # swap item from left with out pivot      

  # </work1> Output the new form of the array before advancing to the next stage

  # b now is a valuable data for this stage
  # partition the array in two in index = b     
  # figure out how to recurse this function with two pieces of the array

end

def simple_quicksort(array)
  return array if array.length < 2
  pivot = array[0]
  left = []
  right = []
  array.each do |e|
      unless e == pivot
          if e > pivot
          right << e            
          else
          left << e            
          end
      end
  end    
  array = simple_quicksort(left) + [pivot] + simple_quicksort(right)      
end

array = [2,6,5,3,8,7,1,0]
p advanced_quicksort(array)