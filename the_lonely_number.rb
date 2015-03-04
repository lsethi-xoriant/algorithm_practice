# The Lonely Number

# There are a bunch of numbers in an array. One of these numbers occurs once in the array. Other numbers occur at least twice.

# Write a function that returns the lonely integer.

# Example: [2,6,3,8,6,2,3] Returns: 8

def the_lonely_number(array)
  frequency_hash = Hash.new(0)

  array.each do |num|
    frequency_hash[num] += 1

  end
  return frequency_hash.select { |key, value| value == 1 }.keys
end


p the_lonely_number([2,6,3,8,6,2,3])
p the_lonely_number([10,10,10,10,10,1,2,3])