 def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    yield source_array[i]
    new.push(yield source_array[i])
    i += 1
  end 
   return new
end

 def reduce(array, sp = nil)
  if sp
    sum = sp
    i = 0 
  else 
    sum = array[0]
    i = 1 
  end 
  while i < array.length 
    sum = yield(sum, array[i])
    i += 1
  end
  sum
end
