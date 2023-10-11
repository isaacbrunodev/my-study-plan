def merge(arr, left, mid, right)
    sub_array_one = mid - left + 1
    sub_array_two = right - mid
  
    left_array = arr[left..(left + sub_array_one - 1)]
    right_array = arr[(mid + 1)..(mid + 1 + sub_array_two - 1)]
  
    index_of_sub_array_one = 0
    index_of_sub_array_two = 0
    index_of_merged_array = left
  
    while index_of_sub_array_one < sub_array_one && index_of_sub_array_two < sub_array_two
      if left_array[index_of_sub_array_one] <= right_array[index_of_sub_array_two]
        arr[index_of_merged_array] = left_array[index_of_sub_array_one]
        index_of_sub_array_one += 1