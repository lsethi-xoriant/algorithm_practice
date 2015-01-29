# Checking for unique characters

# Implement an algorithm to determine whether a string has all unique characters
# Return true if all characters are unique, and return false if characters are not all unique

# Input: string
# Output: True or False

def check_unique_chars(string)
  letters = string.split('')
  counter = Hash.new(0)

  letters.each do |letter|
    counter[letter] += 1
    return false if counter[letter] > 1
  end
  return true
end


p check_unique_chars("hello") == false
p check_unique_chars("asdf") == true
p check_unique_chars(" ") == true
p check_unique_chars("  ") == false
p check_unique_chars("superman") == true
p check_unique_chars("chris") == true
p check_unique_chars("tiffany") == false

 # EDGE CASE
 # Capital vs. Non-Capitalized Letters

