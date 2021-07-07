# Your Code Here
def map(source_array)
newArr = []
source_array.length.times do |index|
newArr << yield(source_array[index])

end
newArr
end


def reduce(source_array, starting_v = 0)
sum = starting_v
source_array.length.times do |index|
sum = yield(source_array[index], sum)
#  sum = source_array[index]
end
sum || false
end
