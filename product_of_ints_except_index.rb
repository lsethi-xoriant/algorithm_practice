# You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.


# Write a function get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.

# Example:
# Input: [1,7,3,4]
# Output: [84, 12, 28, 21]
#[3*4*7, 1*3*4, 1*4*7, 1*3*7]


def get_products_of_all_ints_except_at_index(array)
  array.map do |num|
    array.inject(:*)/num
  end
end

p get_products_of_all_ints_except_at_index([1,7,3,4]) == [84, 12, 28, 21]
p get_products_of_all_ints_except_at_index([5,6,2,3]) == [36, 30, 90, 60]

# not sure if this is an optimal solution