# https://repl.it/student/submissions/7641152

# https://www.youtube.com/watch?v=Hoixgm4-P4M

def advanced_quicksort(array, pivot_index = 0)

  # Definitions
  # ifl: item from left that is larger than the pivot and it's index          
  # a: index of item from left
  # ifr: item from right is smaller than the pivot and it's index          
  # b: index of item from right

  return array if array.length < 2
  pivot = array[pivot_index]    

  # swap the pivot with the element at the end of the array   
  array[pivot_index] = array[-1]
  array[-1] = pivot
  
  # return array.length
  # <segment1>  find ifr and its index
  ifl_index = 0
  ifl = 0
  loop do        
    ifl = array[ifl_index]
    break if ifl > pivot
    ifl_index += 1
  end
  # return ifl
  # </segment1> Two tests passed
  

  # <segment2> ind ifl and its index
  ifr_index = -1
  ifr = 0
  loop do        
    ifr = array[ifr_index]
    break if ifr < pivot
    ifr_index -= 1
  end
  # return ifr
  # </segment2> Two tests passed

  aux = 
  # swap items in the array


  loop do 
    
    # f         

    # break if b < a
    
      
  end 
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

# array = [2,6,5,3,8,7,1,0]

# case 1
# p advanced_quicksort(array)
# p [0,6,5,3,8,7,1,2]
# p "----"

# array = [2,6,5,3,8,7,1,0]
# p advanced_quicksort(array,2)
# p [2,6,0,3,8,7,1,5]
# p "----"

# array = [2,6,5,3,8,7,1,0]
# p advanced_quicksort(array,4)
# p [2,6,5,3,0,7,1,8]
# p "----"

# CASE 1

# p "Find item from the left"
# array = [2,6,5,3,8,7,1,0]
# p advanced_quicksort(array,3)
# p 6
# p "Passed"
# p "----"


# p "Find item from the right"
# array = [2,6,5,3,8,7,1,0]
# p advanced_quicksort(array,3)
# # [2, 6, 5, 0, 8, 7, 1, 3]
# p 1
# p ""
# p "----"

# CASE 2

# p "Find item from the left"
# array = [9, 4, 3, 7, 5, 2, 8, 2	]
# p advanced_quicksort(array,3)
# [9, 4, 3, 2, 5, 2, 8, 7	]
# p 9
# p "Passed"
# p "----"

# p "Find item from the right"
# array = [9, 4, 3, 7, 5, 2, 8, 2	]
# p advanced_quicksort(array,3)
# # [9, 4, 3, 2, 5, 2, 8, 7	]
# p 2
# p ""
# p "----"