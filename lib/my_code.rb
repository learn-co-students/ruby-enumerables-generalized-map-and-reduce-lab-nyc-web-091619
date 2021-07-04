# Your Code Here

def map(array)
  i = 0
  while i < array.length do
    array[i] = yield(array[i])
    i += 1
  end
  array
end

def reduce(array, starting_point = 0)
  i = 0
  total = starting_point
  while i < array.length do
    total = yield(array[i], total)
    if total == false
      return false
    end
    i += 1
  end
  total
end

map([1,2,3,4]){|n| n * -1}