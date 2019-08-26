# Your Code Here
def map(array)
  new_array=[]
  array.length.times {|index|
    new_array[index]=yield(array[index])
  }
  new_array
end

def reduce(array,starting_point=nil)
  if starting_point
    total=starting_point
    index=0
  else
    total=array[0]
    index=1
  end
  while index<array.length do 
    total=yield(total,array[index])
    total
  end
  end