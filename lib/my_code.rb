# Your Code Here

def map(array)
  new = []
  i = 0
  while i < array.length
    new.push(yield(array[i]))
    i+= 1
  end
  new
end

def reduce(array, startingpoint=nil)
  if startingpoint
    accum = startingpoint
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
