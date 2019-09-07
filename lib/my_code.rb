# Your Code Here 

def map(source_array)
  i = 0 
  new_array = []
  
  while i < source_array.length 
    new_array.push(yield(source_array[i]))
    i += 1 
  end
  
  return new_array
  
end

def reduce(source_array, starting_point = 0)
  i = 0 

  while i < source_array.length 
    starting_point += source_array[i]
    i += 1 
  end
  
  return starting_point
  
end


def reduce(source_array, starting_point = 0)
  i = 0 
  
  while i < source_array.length
    
      if !!source_array[i] != true 
        starting_point = false 
      else
        starting_point = true 
      end
  end
      i += 1 
      
  return starting_point
  
end


