#merge sort

#recursive
# def merge_sort(array)

#   if array.length <= 1
#     return array
#   else
#     midpoint = array.length/2
#     left = array[0..midpoint-1]
#     right = array[midpoint..array.length]
#     merge(merge_sort(left), merge_sort(right))
#   end
# end

# def merge(left, right)

#   if left.empty?
#     right
#   elsif right.empty?
#     left
#   elsif left[0] < right[0]
#     [left[0]] + merge(left[1..left.length], right)
#   else
#     [right[0]] + merge(left, right[1..right.length])
#   end
# end

def merge_sort(array)
  if array.length <= 1
    array
  else
    midpoint = (array.length)/2
    left = array[0..midpoint-1]
    right = array[midpoint..array.length]
    merge(merge_sort(left), merge_sort(right))
  end
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty? do
    if left.first < right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end

p merge_sort([5,7,3,8,3,5,7,9,1])
p merge_sort([6,3,8,1,7,4,6,8,1,8])
p merge_sort([3,5,1,24,3,6,2,34,2])