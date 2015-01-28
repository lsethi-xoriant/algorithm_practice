#Reverse a String

# Write a function to reverse a string in place. "In place" means "without creating a new string in memory."

def reverse_string(string)
  left = 0
  right = string.length - 1

  until left >= right do
    temp = string[left]
    string[left] = string[right]
    string[right] = temp

    left += 1
    right -= 1
  end
  string
end

p reverse_string('') == ''
p reverse_string("hello") == "olleh"
p reverse_string("hello my name is chris") == "sirhc si eman ym olleh"
p reverse_string("awesome blossom extra awesome") == "emosewa artxe mossolb emosewa"