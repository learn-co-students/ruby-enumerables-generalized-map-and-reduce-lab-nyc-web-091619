


def map(source_array)
  i = 0
  while i < source_array.length do
    source_array[i] = yield(source_array[i])
    i += 1
  end
  return source_array
end

def reduce(array, starting_point = nil)
  if starting_point
    sum = starting_point
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





