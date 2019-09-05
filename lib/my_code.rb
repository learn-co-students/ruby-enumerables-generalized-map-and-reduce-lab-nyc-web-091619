def map(array)
  newArray = []
  i = 0
  while i < array.length 
    newArray.push(yield(array[i]))
    i += 1
  end
  newArray
end

def reduce(array, sp = 0)
  sum = sp
  i = 0
  while i < array.length
    sum = yield(array[i], sum)
    i+=1
  end
  sum == nil ? false : sum
end


