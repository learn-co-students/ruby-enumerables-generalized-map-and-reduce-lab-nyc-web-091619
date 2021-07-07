# Your Code Here
def map (array)
  i = 0 
  second = []
  while i < array.length do 
    second.push(yield (array[i]))
    i += 1 
  end 
  second
end 

def reduce (array, starting_point=nil)
  i = 0 
  if starting_point
    accum = starting_point
    i = 0 
  else
    accum = array[0]
    i = 1 
  end 
  while i < array.length
  accum = yield(accum, array[i])
  i += 1 
  end 
accum
end 