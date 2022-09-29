def merge_sort(unsorted_arr)
  length = unsorted_arr.size
  return unsorted_arr if length < 2

  half1 = merge_sort(unsorted_arr[0...length/2])
  half2 = merge_sort(unsorted_arr[length/2...length])
  merge_arrays(half1, half2)
end

def merge_arrays(arr1, arr2)
  merged_arr = []
  (arr1.size + arr2.size).times do
    if arr1.empty?
      merged_arr << arr2.shift
    elsif arr2.empty?
      merged_arr << arr1.shift
    else
      if arr1[0] <= arr2[0]
        merged_arr << arr1.shift
      else
        merged_arr << arr2.shift
      end
    end
  end
  merged_arr
end

test_arr = []
rand(100).times do
  test_arr << rand(100)
end
p merge_sort(test_arr)
