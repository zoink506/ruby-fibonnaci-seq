def fibs(limit, sequence = [0, 1], i = 2)
  return sequence if i >= limit
  sequence << sequence[-1] + sequence[-2]
  p sequence
  fibs(limit, sequence, i + 1)
end

def merge_sort(arr)
  # Sort left hand of array
  # Sort right hand of array
  # Merge the halves together
  return arr if arr.length <= 1

  # arr.length equal to 0, do nothing, already sorted
  if arr.length > 1
    # split array in half
    left_side = merge_sort(arr[0..(arr.length/2-1)])
    right_side = merge_sort(arr[arr.length/2..-1])
    merge(left_side, right_side)

  end
end

def merge(left_side, right_side)
  p "merging #{left_side} with #{right_side}"
  merged_array = []
  # merge(left_side, right_side)
  while !left_side.empty? && !right_side.empty?
    if left_side[0] > right_side[0]
      # first element of right size of array is smaller, so should be placed into the merged first, then deleted from right_side
      merged_array << right_side[0]
      right_side.shift
    else
      # first element of left array is equal or smaller than first element of right array, so merge first
      merged_array << left_side[0]
      left_side.shift
    end
  end

  # after loop, one array will be empty, other will have 1 elements left
  while !left_side.empty?
    merged_array << left_side[0]
    left_side.shift
  end

  while !right_side.empty?
    merged_array << right_side[0]
    right_side.shift
  end
  merged_array
end

puts "Fibonacci Sequence"
p fibs(10)
puts "\nMerge Sort"
arr = [9, 5, 7, 3, 2, 1]
p arr
p merge_sort(arr)

