def map(array, &block)
  array.map(&block)
end
map([1, 2, 3, -9]) {|n| n * -1}

def reduce(array, starting_point = nil, &block)
  if starting_point.nil?
    array.reduce(&block)
  else
    array.reduce(starting_point, &block)
  end
end
reduce([1, 2, 3], 0) {|memo, n| memo + n}
reduce([1, 2, 3], 100) {|memo, n| memo + n}
reduce([false, nil, nil, nil, true]) {|memo, n| memo || n}