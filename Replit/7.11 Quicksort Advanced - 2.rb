# https://repl.it/student/submissions/7641152

# https://www.youtube.com/watch?v=Hoixgm4-P4M

def advanced_quicksort(array, pivot_index = 0, begining_position = 0, ending_position = array.length - 1) 


  return array if ending_position - begining_position < 1

  # p "begining_position: " + begining_position.to_s
  # p "pivot_index: " + pivot_index.to_s  
  # p "ending_position: " + ending_position.to_s
  # p "Received array"
  # p array
  # Definitions
  # ifl: item from left that is larger than the pivot and it's index          
  # a: index of item from left
  # ifr: item from right is smaller than the pivot and it's index          
  # b: index of item from right

  

  pivot = array[pivot_index]    

  
  array[pivot_index] = array[ending_position]
  array[ending_position] = pivot
  # p "Sends pivot to the last position"
  # p array
  
  # return array.length
  
  i = 0
  ifl_index = begining_position
  ifl = 0
  ifr_index = ending_position
  ifr = 0
  # </>
  loop do 
    
    # <segment1>  find ifr and its index   
    # p "ifl_index: " + ifl_index.to_s
    # p "ifr_index: " + ifr_index.to_s


    break if ifl_index + 1 > ifr_index 
    
    loop do        
      ifl = array[ifl_index] 
      # puts "ifl_index: " + ifl_index.to_s
      break if ifl > pivot || ifl_index > ending_position - 1
      ifl_index += 1 
    end 

    # return ifl_index
    # </segment1> Two tests passed


    # <segment2> ind ifl and its index    



    loop do
      ifr = array[ifr_index]
      # p "ifr_index: " + ifr_index.to_s
      # p "pivot: " + pivot.to_s
      # p array      
      break if ifr < pivot || ifr_index < begining_position
      ifr_index -= 1
    end
    # return ifr_index
    # </segment2> Two tests passed

    # p "-------iteration: " + i.to_s + "---------"
    # p "ifr->" + ifr.to_s
    # p "ifr_index->" + ifr_index.to_s
    # p "ifl->" + ifl.to_s
    # p "ifl_index->" + ifl_index.to_s
    # p "array.length: " + array.length.to_s

    # <> swap items in the array

    # p "-------iteration: " + i.to_s + "---------"

    break if ifr_index < ifl_index


    aux = array[ifr_index]
    array[ifr_index] = array[ifl_index]
    array[ifl_index] = aux

    # p "ifr_index -> " + ifr_index.to_s
    # p "ifl_index -> " + ifl_index.to_s
    # p "Iteration Nº -> " + i.to_s
    # p "end"
    # p pivot
    # p array
    # return array
    # <> Define a finishing condition for the loop before swaping
    # break if i == 1
    i += 1 # this is for debugging, should delete it for presentation
    # <>  
  end 


  
  # p "array.length: " + array.length.to_s
  
  # # swap item from left with out pivot before delivering the array  
  array[ending_position] = array[ifr_index + 1]
  array[ifr_index + 1] = pivot
  #p array.length + ifr_index


  
  

  partition_index = ifr_index + 1

  # p "Puts pivot back in place and sends it to recurse"  
  # p "partition_index->" + partition_index.to_s
  # p array
  advanced_quicksort(
    array, begining_position ,
    begining_position, 
    partition_index -1) 
  advanced_quicksort(
    array, partition_index + 1, 
    partition_index + 1, 
    ending_position)
  # p "Result from recursion"
  # p array

  return array
  # </work1> Output the new form of the array before advancing to the next stage

  # b now is a valuable data for this stage
  # partition the array in two in index = b     
  # figure out how to recurse this function with two pieces of the array

end

p "-----Test 1------"
array = [2,6,5,3,8,7,1,0]
p "Input"
p array
p 'Result'
p advanced_quicksort(array,3)
[2,1,0,5,8,7,6,3]
[2,1,0,3,8,7,6,5]



p "-----Test 2------"
array = [9, 4, 3, 7, 5, 2, 8	]
p "Input"
p array
p 'Result'
p advanced_quicksort(array,3)
# [9, 4, 3, 8, 5, 2, 7]
# [2, 4, 3, 8, 5, 9, 7]
# [2, 4, 3, 6, 8, 9, 7]
# [2, 4, 3, 7, 8, 9, 6]



p "------Test 3-----"
p "Input"
array = [4, 1, 8, 2, 3, 6, 5, 9, 7]
p array
p 'Result'
p advanced_quicksort(array,3)

# [4, 1, 8, 2, 3, 6, 5, 9, 7] # begining
# [4, 1, 8, 7, 3, 6, 5, 9, 2]
# [1, 4, 8, 7, 3, 6, 5, 9, 2]
# p [1, 2, 8, 7, 3, 6, 5, 9, 4]

p "------Test 4-----"
p "Input"
array = [9, 8, 6, 7, 3, 5, 4, 1, 2]
p array
p 'Result'
p advanced_quicksort(array,3)


p "------Test 4-----"
p "Input"
array = [1, 3, 9, 8, 2, 7, 5]
p array
p 'Result'
p advanced_quicksort(array,3)


p "------Test 5-----"
p "Input"
array = [406, 157, 415, 318, 472, 46, 252, 187, 364, 481, 450, 90, 390, 35, 452, 74, 196, 312, 142, 160, 143, 220, 483, 392, 443, 488, 79, 234, 68, 150, 356, 496, 69, 88, 177, 12, 288, 120, 222, 270, 441, 422, 103, 321, 65, 316, 448, 331, 117, 183]
p array
p 'Result'
p advanced_quicksort(array,3)

