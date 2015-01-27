#max sum
#find the max sum of non adjacent numbers

def get_max_sum(array)
  return 0 if array == []
  return array.max if array.length <= 2

  first_num = array[0] + get_max_sum(array[2..-1])
  second_num = array[1] + get_max_sum(array[3..-1])
  possible_max = [first_num, second_num]
  return possible_max.max
end

p get_max_sum([4,5,6,9,1]) # => 14
p get_max_sum([1,5]) # => 5
p get_max_sum([1,3,3]) # => 4
p get_max_sum([3,1,6,8,3,9]) # => 20