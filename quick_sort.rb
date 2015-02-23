# Quick Sort

# Trying to implement the Quick Sort algorithm

#array
#choose pivot
#lesser numbers on left sub array, greater number on rightsub array
#repeat with new pivot in subarrays

def quicksort(array)
  if array.length <= 1
    return array
  else
    pivot = array.sample # choosing random pivot for now
    array.delete_at(array.index(pivot))

    left = []
    right = []
    array.each do |num|
      if num <= pivot
        left << num
      else
        right << num
      end
    end
  end
  sorted_array = []
  sorted_array << quicksort(left)
  sorted_array << pivot
  sorted_array << quicksort(right)

  return sorted_array.flatten
end

p quicksort([4,3,6,2,1000, 69,23,54,72,85,36,2,854,8324,8,9,6,4,12,32,53,47,2,74,235,2347,854,353,249,90,85,3,5,75,753,653,135,54,82,7,8,2])