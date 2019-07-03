# Your Code Here
require 'pry'

def map (sourceArray)

  counter = 0                                       # counter to iterate through sourceArray
  resultArray = Array.new                           # holder for our return array 
  
  while counter < sourceArray.length do             # until we get through the sourceArray do...
    resultArray << yield(sourceArray[counter])      # push result of yield into our return array
    counter += 1                                    # prepare for next iteration
  end 
  
  return resultArray                                # send back result
end

def reduce (sourceArray, startValue=nil)

  if startValue
    total = startValue
    counter = 0 
  else
    total = sourceArray[0]
    counter = 1 
  end
  
  while counter < sourceArray.length do  
      total = yield(total, sourceArray[counter])
      counter += 1
  end
  return total
end
