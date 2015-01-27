#Binary Search


#recursive
# def binary_search(array, targetValue, min = 0, max = array.length - 1)
#   return -1 if min > max
#   mid_index = (min + max)/2
#   case
#   when array[mid_index] < targetValue
#     binary_search(array, targetValue, mid_index + 1, array.length - 1)
#   when array[mid_index] > targetValue
#     binary_search(array, targetValue, min, mid_index - 1)
#   else
#     mid_index
#   end
# end

def binary_search(array, targetValue, min = 0, max = array.length - 1)
  while min <= max do
    mid_index = min + (max - min)/2
    if array[mid_index] < targetValue
      min = mid_index + 1
    elsif array[mid_index] > targetValue
      max = mid_index - 1
    else
      return mid_index
    end
  end
  return -1
end

ar = [23, 45, 67, 89, 123, 568]
p binary_search(ar, 23) == 0
p binary_search(ar, 123) == 4
p binary_search(ar, 120) == -1
p binary_search([1,2,3,4,5,6,7,8,9,10,11,12], 1) == 0
p binary_search([1,2,3,4,5,6,7,8,9,10,11,12], 2) == 1
p binary_search([1,2,3,4,5,6,7,8,9,10,11,12], 20) == -1
p binary_search([1,2,3,4,5,6,7,8,9,10,11,12], 10) == 9