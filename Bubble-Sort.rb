def bubble_sort(arr)
  i = 0
  while i < arr.length - 1
    if arr[i] < arr[i + 1]
      i += 1
    elsif arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      i = 0
    else
      i += 1
    end
  end
  arr
end

print bubble_sort([4, 3, 78, 2, 0, 2])
print bubble_sort([1, 2, 3, 4, 5, 6])
