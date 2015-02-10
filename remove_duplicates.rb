# Remove Duplicates
# Create a Ruby method called removeDupes that takes a string, removes all of the duplicate letters, then returns the resulting string. What is the time and space complexity of your algorithm?

# Example: removeDupes("google") #=> "gole"

# def remove_duplicates(string)
#   string.split('').uniq.join
# end


def remove_duplicates(string)
  letters = string.split('')

  unique_letters = []

  letters.each do |letter|
    unless unique_letters.include?(letter)
      unique_letters.push(letter)
    end
  end
  unique_letters.join
end

p remove_duplicates("google") == "gole"
p remove_duplicates("chris") == "chris"
p remove_duplicates("00iicahak") == "0icahk"