# Your Code Here
def map(source_array)
  new_array = []
  source_array.each{|num| new_array << yield(num)}
  new_array
end

def reduce(source_array, starting_point = nil)
  if starting_point
    total = starting_point
    source_array.each{|element| total = yield(total, element)}
  else
    total = source_array[0]
    source_array.drop(1).each{|element| total = yield(total, element)}
  end
  total
end