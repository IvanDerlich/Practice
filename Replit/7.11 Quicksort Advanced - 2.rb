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
  
  i = 0
  ifl_index = 0
  ifl = 0
  ifr_index = -2
  ifr = 0
  # </>
  loop do 
    
    # <segment1>  find ifr and its index   
    
    loop do        
      ifl = array[ifl_index]
      break if ifl > pivot
      ifl_index += 1
    end
    # return ifl_index
    # </segment1> Two tests passed


    # <segment2> ind ifl and its index    
    loop do        
      ifr = array[ifr_index]
      break if ifr < pivot
      ifr_index -= 1
    end
    # return ifr_index
    # </segment2> Two tests passed

    # p "-------iteration: " + i.to_s + "---------"
    # # p "ifr->" + ifr.to_s
    # p "ifr_index->" + ifr_index.to_s
    # # p "ifl->" + ifl.to_s
    # p "ifl_index->" + ifl_index.to_s
    # p "array.length: " + array.length.to_s

    # <> swap items in the array

    
    aux = array[ifr_index]
    array[ifr_index] = array[ifl_index]
    array[ifl_index] = aux
    
    # <> Define a finishing condition for the loop before swaping
    break if array.length + ifr > ifl
    # break if i == 1
    i += 1
    # <>  
  end 
  return array
  # swap item from left with out pivot      

  # </work1> Output the new form of the array before advancing to the next stage

  # b now is a valuable data for this stage
  # partition the array in two in index = b     
  # figure out how to recurse this function with two pieces of the array

end

# <> Case 3
array = [4, 1, 8, 2, 3, 6, 5, 9, 7]
p advanced_quicksort(array, pivot_index = 3)

[4, 1, 8, 2, 3, 6, 5, 9, 7]
[4, 1, 8, 7, 3, 6, 5, 9, 2]
[4, 1, 8, 7, 3, 6, 5, 9, 2]
[3, 1, 8, 7, 4, 6, 5, 9, 2]
p [1, 3, 8, 7, 4, 6, 5, 9, 2]

# </> Case 3

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

# p "CASE 1"

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
# p "Passed"
# p "----"

# p "Swap Items"
# array = [2,6,5,3,8,7,1,0]
# p array
# p advanced_quicksort(array,3)
# p [2,1,5,0,8,7,6,3]
# p "Passed"
# p "----"

# p "Second Iteration"
#  array = [2,6,5,3,8,7,1,0]
# # # p array
# p advanced_quicksort(array,3)
# p [2,1,0,5,8,7,6,3]
# # # p "Passed"
# # # p "----"

# p "It should stop alone"
# array = [2,6,5,3,8,7,1,0]
# # # p array
# p advanced_quicksort(array,3)
# p [2,1,0,5,8,7,6,3]
# # # p "Passed"
# # # p "----"

# p "CASE 2"

# p "Find item from the left"
# array = [9, 4, 3, 7, 5, 2, 8, 2	]
# p advanced_quicksort(array,3)
# [9, 4, 3, 2, 5, 2, 8, 7	]
# p 9
# p "Passed"
# p "----"

# p "Swap Items"
# array = [9, 4, 3, 7, 5, 2, 8	]
# p advanced_quicksort(array,3)

# #  [9, 4, 3, 8, 5, 2, 7	]
# #  [2, 4, 3, 8, 5, 9, 7	]

# # [9, 4, 3, 8, 5, 2, 8, 7	]
# # pivot = 7
# # ifl = 9
# # ifr = 2
# p [2, 4, 3, 8, 5, 9, 7	]
# p "Passed"
# p "----"

# # p "Second Iteration"
#  array = [9, 4, 3, 7, 5, 2, 8	]
#  p advanced_quicksort(array,3)

# # [9, 4, 3, 8, 5, 2, 7]
# # [2, 4, 3, 8, 5, 9, 7]
# # [2, 4, 3, 5, 8, 9, 7]

# # # pivot = 7
# # # ifl = 9
# # # ifr = 2
# p [2, 4, 3, 5, 8, 9, 7]
# # p "Passed"
# # # p "----"

# p "It should stop alone"
# array = [9, 4, 3, 7, 5, 2, 8	]
# p advanced_quicksort(array,3)

# # [9, 4, 3, 8, 5, 2, 7]
# # [2, 4, 3, 8, 5, 9, 7]
# # [2, 4, 3, 5, 8, 9, 7]

# # # pivot = 7
# # # ifl = 9
# # # ifr = 2
# p [2, 4, 3, 5, 8, 9, 7]
# # p "Passed"
# # # p "----"

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