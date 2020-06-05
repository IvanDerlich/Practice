def advanced_quicksort(array, pivot_index = 0, begining_position = 0, ending_position = array.length - 1) 
  return array if ending_position - begining_position < 1

  pivot = array[pivot_index]    
  
  array[pivot_index] = array[ending_position]
  array[ending_position] = pivot

  
  i = 0
  ifl_index = begining_position
  ifl = 0
  ifr_index = ending_position
  ifr = 0

  loop do 

    break if ifl_index + 1 > ifr_index 
    
    loop do        
      ifl = array[ifl_index] 
      break if ifl > pivot || ifl_index > ending_position - 1
      ifl_index += 1 
    end 

    loop do
      ifr = array[ifr_index]
      
      break if ifr < pivot || ifr_index < begining_position
      ifr_index -= 1
    end   

    break if ifr_index < ifl_index


    aux = array[ifr_index]
    array[ifr_index] = array[ifl_index]
    array[ifl_index] = aux

  end 
 
  array[ending_position] = array[ifr_index + 1]
  array[ifr_index + 1] = pivot

  partition_index = ifr_index + 1

  advanced_quicksort(
    array, begining_position ,
    begining_position, 
    partition_index -1) 
  advanced_quicksort(
    array, partition_index + 1, 
    partition_index + 1, 
    ending_position)
  p array
end