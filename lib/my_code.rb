# your code here?
def map(source_array)
  mapped_array = []
  counter = 0
  while source_array[counter]
    mapped_array.push(yield(source_array[counter]))
    counter += 1
  end
  mapped_array
end

def reduce(source_array, start = nil)
  if start
    reduced = start
    counter = 0
  else
    reduced = source_array[0]
    counter = 1
  end
  while counter < source_array.length
    reduced = yield(reduced, source_array[counter])
    counter += 1
  end
  reduced
end
